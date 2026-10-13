#include "AcousticMainWindow.h"

#include <QCloseEvent>
#include <QDebug>
#include <QDockWidget>
#include <QFileDialog>
#include <QFrame>
#include <QGridLayout>
#include <QHBoxLayout>
#include <QPixmap>
#include <QPainterPath>
#include <QVBoxLayout>

#include <algorithm>
#include <cmath>
#include <cstring>

namespace {
const char *kStyleSheet = R"(
QMainWindow { background-color: #121212; }
QWidget { color: #d4d4d4; font-family: 'Segoe UI'; font-size: 11px; }
#Sidebar { background-color: #1e1e1e; border-right: 1px solid #333; }
QPushButton {
    background-color: transparent; border: none; padding: 12px 5px;
    color: #a0a0a0; font-weight: bold; border-radius: 4px;
}
QPushButton:hover { background-color: #333; color: #ffffff; }
QPushButton:checked { background-color: #2a2a2b; color: #4fc1ff; border-left: 3px solid #4fc1ff; }
QPushButton:disabled { color: #555; }
QDoubleSpinBox, QSpinBox, QComboBox {
    background-color: #252526; color: #4fc1ff; border: 1px solid #3e3e42;
    border-radius: 2px; padding: 2px;
}
QComboBox::drop-down { border: none; width: 15px; }
QLabel { color: #888; }
)";

float readFloatLE(const char *data)
{
    float value = 0.0f;
    std::memcpy(&value, data, sizeof(value));
    return value;
}

quint32 readUInt32LE(const char *data)
{
    quint32 value = 0;
    std::memcpy(&value, data, sizeof(value));
    return value;
}

QByteArray makeUInt32Packet(quint32 value)
{
    QByteArray bytes(sizeof(value), Qt::Uninitialized);
    std::memcpy(bytes.data(), &value, sizeof(value));
    return bytes;
}
} // namespace

AcousticOverlayWidget::AcousticOverlayWidget(QWidget *parent)
    : QWidget(parent), rng_(std::random_device{}())
{
    setAttribute(Qt::WA_TransparentForMouseEvents);
    setAttribute(Qt::WA_TranslucentBackground);
    setAutoFillBackground(false);
}

void AcousticOverlayWidget::setCloudGrid(const std::array<quint8, 32 * 24> &grid, bool valid)
{
    grid_ = grid;
    hasGrid_ = valid;
    update();
}

void AcousticOverlayWidget::setDisplayState(double freqHz, double pwrDb, double fMinKHz, double fMaxKHz, double thresholdDb,
                                            int offsetX, int offsetY, bool recording)
{
    smoothFreqHz_ = freqHz;
    smoothPwrDb_ = pwrDb;
    fMinKHz_ = fMinKHz;
    fMaxKHz_ = fMaxKHz;
    thresholdDb_ = thresholdDb;
    offsetX_ = offsetX;
    offsetY_ = offsetY;
    recording_ = recording;
    update();
}

QColor AcousticOverlayWidget::jetColor(double v) const
{
    v = std::clamp(v, 0.0, 1.0);
    const double r = std::clamp(1.5 - std::abs(4.0 * v - 3.0), 0.0, 1.0);
    const double g = std::clamp(1.5 - std::abs(4.0 * v - 2.0), 0.0, 1.0);
    const double b = std::clamp(1.5 - std::abs(4.0 * v - 1.0), 0.0, 1.0);
    return QColor(static_cast<int>(r * 255), static_cast<int>(g * 255), static_cast<int>(b * 255));
}

QImage AcousticOverlayWidget::buildHeatmapImage() const
{
    QImage image(CloudW, CloudH, QImage::Format_ARGB32_Premultiplied);
    image.fill(Qt::transparent);

    for (int y = 0; y < CloudH; ++y) {
        for (int x = 0; x < CloudW; ++x) {
            double v = static_cast<double>(grid_[y * CloudW + x]) / 255.0;
            v = std::clamp((v - 0.4) / 0.6, 0.0, 1.0);
            v = std::pow(v, 3.0);
            QColor c = jetColor(v);
            c.setAlphaF(std::clamp(v * 0.75, 0.0, 0.75));
            image.setPixelColor(x, y, c);
        }
    }
    return image.scaled(size(), Qt::IgnoreAspectRatio, Qt::SmoothTransformation);
}

void AcousticOverlayWidget::paintEvent(QPaintEvent *)
{
    QPainter painter(this);
    painter.setRenderHint(QPainter::Antialiasing, true);
    painter.setRenderHint(QPainter::SmoothPixmapTransform, true);

    if (hasGrid_) {
        const QImage heatmap = buildHeatmapImage();
        painter.drawImage(QPoint(offsetX_, offsetY_), heatmap);

        QPoint peak;
        quint8 maxValue = 0;
        for (int y = 0; y < CloudH; ++y) {
            for (int x = 0; x < CloudW; ++x) {
                const quint8 value = grid_[y * CloudW + x];
                if (value > maxValue) {
                    maxValue = value;
                    peak = QPoint(x, y);
                }
            }
        }

        if (maxValue > 0) {
            const int px = offsetX_ + static_cast<int>((peak.x() + 0.5) * width() / CloudW);
            const int py = offsetY_ + static_cast<int>((peak.y() + 0.5) * height() / CloudH);
            painter.setPen(QPen(Qt::black, 2));
            painter.drawLine(px - 12, py, px + 12, py);
            painter.drawLine(px, py - 12, px, py + 12);
            painter.drawText(px + 10, py + 15, QStringLiteral("PEAK"));
        }
    }

    drawHud(painter);
}

void AcousticOverlayWidget::drawHud(QPainter &painter)
{
    painter.setPen(QPen(Qt::black, 2));
    const QString timeText = QDateTime::currentDateTime().toString(QStringLiteral("yyyy-MM-dd  HH:mm:ss"));
    painter.drawText(20, 30, timeText);
    painter.drawText(20, 60, QStringLiteral("Acoustic Imager Pro Qt"));
    painter.drawText(20, height() - 70, QStringLiteral("Det. Band : %1KHz - %2KHz").arg(fMinKHz_, 0, 'f', 2).arg(fMaxKHz_, 0, 'f', 2));
    painter.drawText(20, height() - 45, QStringLiteral("Peak Freq : %1 KHz").arg(smoothFreqHz_ / 1000.0, 0, 'f', 2));
    painter.drawText(20, height() - 20, QStringLiteral("Peak Pwr  : %1 dB").arg(smoothPwrDb_, 0, 'f', 2));

    const int cbX = width() - 180;
    const int cbY = 100;
    for (int y = 0; y < 300; ++y) {
        const double v = 1.0 - static_cast<double>(y) / 299.0;
        painter.fillRect(cbX, cbY + y, 15, 1, jetColor(v));
    }
    painter.drawText(cbX - 15, cbY - 10, QStringLiteral("%1dB").arg(thresholdDb_ + 40.0, 0, 'f', 1));
    painter.drawText(cbX - 15, cbY + 325, QStringLiteral("%1dB").arg(thresholdDb_ - 10.0, 0, 'f', 1));

    const int specX = width() - 60;
    painter.setPen(QPen(QColor(100, 100, 100), 1));
    painter.drawLine(specX, 50, specX, height() - 50);
    painter.setPen(QPen(QColor(0, 0, 0), 1));
    for (double freqKHz = 0.0; freqKHz <= FreqMaxKHz + 0.01; freqKHz += 10.0) {
        const int y = static_cast<int>(height() - 50 - (freqKHz / FreqMaxKHz) * (height() - 100));
        painter.drawLine(specX, y, specX + 5, y);
        painter.drawText(specX + 10, y + 4, QStringLiteral("%1k").arg(freqKHz, 0, 'f', 0));
    }

    std::uniform_int_distribution<int> smallBars(1, 5);
    std::uniform_int_distribution<int> bandBars(5, 12);
    painter.setPen(QPen(Qt::green, 1));
    for (int y = 50; y < height() - 50; y += 3) {
        int barLen = smallBars(rng_);
        const double pixelFreq = FreqMaxKHz * (1.0 - static_cast<double>(y - 50) / (height() - 100));
        if (fMinKHz_ < pixelFreq && pixelFreq < fMaxKHz_ && smoothPwrDb_ > thresholdDb_) {
            const double diff = std::abs(pixelFreq - smoothFreqHz_ / 1000.0);
            barLen += diff < 2.0 ? static_cast<int>((2.0 - diff) * 15.0 * (smoothPwrDb_ / 50.0)) : bandBars(rng_);
        }
        painter.drawLine(specX, y, specX - std::min(barLen, 60), y);
    }

    const int yTop = static_cast<int>(height() - 50 - (fMaxKHz_ / FreqMaxKHz) * (height() - 100));
    const int yBottom = static_cast<int>(height() - 50 - (fMinKHz_ / FreqMaxKHz) * (height() - 100));
    painter.setPen(QPen(QColor(30, 144, 255), 1));
    painter.drawRect(QRect(QPoint(specX - 30, yTop), QPoint(specX - 1, yBottom)));

    if (recording_ && ((QDateTime::currentMSecsSinceEpoch() / 500) % 2 == 0)) {
        painter.setBrush(Qt::red);
        painter.setPen(Qt::red);
        painter.drawEllipse(QPoint(width() - 230, 45), 6, 6);
        painter.drawText(width() - 215, 50, QStringLiteral("REC"));
    }
}

TimeWaveformWidget::TimeWaveformWidget(QWidget *parent)
    : QWidget(parent)
{
    setMinimumHeight(190);
    setAutoFillBackground(true);
}

void TimeWaveformWidget::setSamples(const std::array<qint16, 128> &samples, float samplingRate, quint16 channel)
{
    samples_ = samples;
    samplingRate_ = samplingRate;
    channel_ = channel;
    hasSamples_ = true;
    update();
}

void TimeWaveformWidget::paintEvent(QPaintEvent *)
{
    QPainter painter(this);
    painter.setRenderHint(QPainter::Antialiasing, true);
    painter.fillRect(rect(), QColor(18, 18, 18));

    const QRect plot = rect().adjusted(48, 24, -18, -32);
    if (plot.width() <= 0 || plot.height() <= 0) {
        return;
    }

    painter.setPen(QPen(QColor(58, 58, 58), 1));
    for (int i = 0; i <= 4; ++i) {
        const int y = plot.top() + i * plot.height() / 4;
        painter.drawLine(plot.left(), y, plot.right(), y);
    }
    for (int i = 0; i <= 4; ++i) {
        const int x = plot.left() + i * plot.width() / 4;
        painter.drawLine(x, plot.top(), x, plot.bottom());
    }

    painter.setPen(QColor(150, 150, 150));
    painter.drawText(12, 18, QStringLiteral("Raw waveform  CH%1").arg(channel_ + 1));

    if (!hasSamples_) {
        painter.drawText(plot, Qt::AlignCenter, QStringLiteral("Waiting for raw samples"));
        return;
    }

    int maxAbs = 256;
    for (const qint16 sample : samples_) {
        maxAbs = std::max(maxAbs, std::abs(static_cast<int>(sample)));
    }
    const int fullScale = ((maxAbs + 255) / 256) * 256;
    const int centerY = plot.center().y();
    const double amplitudeScale = (plot.height() * 0.45) / static_cast<double>(fullScale);

    QPainterPath path;
    for (int i = 0; i < static_cast<int>(samples_.size()); ++i) {
        const double x = plot.left() + static_cast<double>(i) * plot.width() / (static_cast<int>(samples_.size()) - 1);
        const double y = centerY - static_cast<double>(samples_[i]) * amplitudeScale;
        if (i == 0) {
            path.moveTo(x, y);
        } else {
            path.lineTo(x, y);
        }
    }
    painter.setPen(QPen(QColor(65, 205, 126), 1.5));
    painter.drawPath(path);

    const double durationMs = 1000.0 * static_cast<double>(samples_.size()) / std::max(1.0f, samplingRate_);
    painter.setPen(QColor(150, 150, 150));
    painter.drawText(plot.left(), height() - 9, QStringLiteral("0 ms"));
    painter.drawText(plot.right() - 45, height() - 9, QStringLiteral("%1 ms").arg(durationMs, 0, 'f', 3));
    painter.drawText(4, plot.top() + 4, QString::number(fullScale));
    painter.drawText(4, plot.bottom(), QString::number(-fullScale));
}

AcousticMainWindow::AcousticMainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    setWindowTitle(QStringLiteral("Acoustic Imager Pro - Qt"));
    resize(1360, 720);
    setStyleSheet(QString::fromLatin1(kStyleSheet));

    initUi();

    udpSocket_.bind(QHostAddress::AnyIPv4, UdpPort, QUdpSocket::ShareAddress | QUdpSocket::ReuseAddressHint);

    camera_ = new QCamera(this);
    camera_->setViewfinder(viewfinder_);
    camera_->start();

    connect(&networkTimer_, &QTimer::timeout, this, &AcousticMainWindow::updateNetwork);
    networkTimer_.start(30);
}

AcousticMainWindow::~AcousticMainWindow()
{
    if (camera_) {
        camera_->stop();
    }
}

void AcousticMainWindow::initUi()
{
    auto *central = new QWidget(this);
    setCentralWidget(central);

    auto *mainLayout = new QHBoxLayout(central);
    mainLayout->setContentsMargins(0, 0, 0, 0);
    mainLayout->setSpacing(0);

    auto *sidebar = new QWidget(central);
    sidebar->setObjectName(QStringLiteral("Sidebar"));
    sidebar->setFixedWidth(85);

    auto *sideLayout = new QVBoxLayout(sidebar);
    sideLayout->setContentsMargins(5, 20, 5, 20);
    sideLayout->setSpacing(10);

    previewButton_ = new QPushButton(QStringLiteral("PREVIEW\nStart"), sidebar);
    previewButton_->setCheckable(true);
    recordButton_ = new QPushButton(QStringLiteral("REC\nVideo"), sidebar);
    recordButton_->setCheckable(true);
    captureButton_ = new QPushButton(QStringLiteral("SNAP\nShot"), sidebar);

    sideLayout->addWidget(previewButton_);
    sideLayout->addWidget(recordButton_);
    sideLayout->addWidget(captureButton_);
    sideLayout->addStretch();

    sideLayout->addWidget(new QLabel(QStringLiteral("X Offset"), sidebar), 0, Qt::AlignCenter);
    offsetXSpin_ = new QSpinBox(sidebar);
    offsetXSpin_->setRange(-500, 500);
    offsetXSpin_->setSingleStep(10);
    sideLayout->addWidget(offsetXSpin_);

    sideLayout->addWidget(new QLabel(QStringLiteral("Y Offset"), sidebar), 0, Qt::AlignCenter);
    offsetYSpin_ = new QSpinBox(sidebar);
    offsetYSpin_->setRange(-500, 500);
    offsetYSpin_->setSingleStep(10);
    sideLayout->addWidget(offsetYSpin_);

    auto *line = new QFrame(sidebar);
    line->setFrameShape(QFrame::HLine);
    line->setStyleSheet(QStringLiteral("background-color: #333;"));
    sideLayout->addWidget(line);

    sideLayout->addWidget(new QLabel(QStringLiteral("Scene"), sidebar), 0, Qt::AlignCenter);
    scenarioCombo_ = new QComboBox(sidebar);
    scenarioCombo_->addItems({QStringLiteral("Leak Quiet"), QStringLiteral("Leak Noise"), QStringLiteral("PD"), QStringLiteral("Custom")});
    sideLayout->addWidget(scenarioCombo_);

    sideLayout->addWidget(new QLabel(QStringLiteral("Min(kHz)"), sidebar), 0, Qt::AlignCenter);
    fMinSpin_ = new QDoubleSpinBox(sidebar);
    fMinSpin_->setRange(FreqMinKHz, FreqMaxKHz);
    fMinSpin_->setValue(1.0);
    fMinSpin_->setDecimals(1);
    sideLayout->addWidget(fMinSpin_);

    sideLayout->addWidget(new QLabel(QStringLiteral("Max(kHz)"), sidebar), 0, Qt::AlignCenter);
    fMaxSpin_ = new QDoubleSpinBox(sidebar);
    fMaxSpin_->setRange(FreqMinKHz, FreqMaxKHz);
    fMaxSpin_->setValue(FreqMaxKHz);
    fMaxSpin_->setDecimals(1);
    sideLayout->addWidget(fMaxSpin_);

    sideLayout->addWidget(new QLabel(QStringLiteral("Threshold"), sidebar), 0, Qt::AlignCenter);
    thresholdSpin_ = new QDoubleSpinBox(sidebar);
    thresholdSpin_->setRange(0.0, 100.0);
    thresholdSpin_->setValue(20.0);
    thresholdSpin_->setSingleStep(2.0);
    thresholdSpin_->setDecimals(1);
    sideLayout->addWidget(thresholdSpin_);

    videoContainer_ = new QWidget(central);
    auto *videoLayout = new QGridLayout(videoContainer_);
    videoLayout->setContentsMargins(0, 0, 0, 0);
    videoLayout->setSpacing(0);
    viewfinder_ = new QCameraViewfinder(videoContainer_);
    overlay_ = new AcousticOverlayWidget(videoContainer_);
    videoLayout->addWidget(viewfinder_, 0, 0);
    videoLayout->addWidget(overlay_, 0, 0);

    mainLayout->addWidget(sidebar);
    mainLayout->addWidget(videoContainer_, 1);

    auto *waveDock = new QDockWidget(QStringLiteral("Raw Waveform"), this);
    waveDock->setObjectName(QStringLiteral("RawWaveformDock"));
    waveDock->setAllowedAreas(Qt::BottomDockWidgetArea | Qt::TopDockWidgetArea);
    waveform_ = new TimeWaveformWidget(waveDock);
    waveDock->setWidget(waveform_);
    addDockWidget(Qt::BottomDockWidgetArea, waveDock);
    waveDock->setMinimumHeight(220);

    connect(previewButton_, &QPushButton::toggled, this, &AcousticMainWindow::togglePreview);
    connect(recordButton_, &QPushButton::toggled, this, &AcousticMainWindow::toggleRecord);
    connect(captureButton_, &QPushButton::clicked, this, &AcousticMainWindow::captureScreenshot);
    connect(scenarioCombo_, qOverload<int>(&QComboBox::currentIndexChanged), this, &AcousticMainWindow::onScenarioChanged);
    connect(fMinSpin_, qOverload<double>(&QDoubleSpinBox::valueChanged), this, &AcousticMainWindow::sendFreqBandCmd);
    connect(fMaxSpin_, qOverload<double>(&QDoubleSpinBox::valueChanged), this, &AcousticMainWindow::sendFreqBandCmd);
}

void AcousticMainWindow::sendControlCmd(quint32 cmdValue)
{
    const QByteArray bytes = makeUInt32Packet(cmdValue);
    udpSocket_.writeDatagram(bytes, zynqAddress_, ZynqCtrlPort);
}

void AcousticMainWindow::sendFreqBandCmd()
{
    const float fMin = static_cast<float>(fMinSpin_->value());
    const float fMax = static_cast<float>(fMaxSpin_->value());
    if (fMin >= fMax) {
        return;
    }

    quint32 cmd = 4;
    QByteArray bytes(12, Qt::Uninitialized);
    std::memcpy(bytes.data(), &cmd, sizeof(cmd));
    std::memcpy(bytes.data() + 4, &fMin, sizeof(fMin));
    std::memcpy(bytes.data() + 8, &fMax, sizeof(fMax));
    udpSocket_.writeDatagram(bytes, zynqAddress_, ZynqCtrlPort);
}

void AcousticMainWindow::togglePreview(bool checked)
{
    isPreviewing_ = checked;
    if (checked) {
        sendFreqBandCmd();
        sendControlCmd(2);
        previewButton_->setText(QStringLiteral("STOP\nStop"));
    } else {
        sendControlCmd(3);
        previewButton_->setText(QStringLiteral("PREVIEW\nStart"));
        smoothPwrDb_ = 0.0;
        overlay_->setCloudGrid({}, false);
    }
}

void AcousticMainWindow::toggleRecord(bool checked)
{
    isRecording_ = checked;
    recordButton_->setStyleSheet(checked ? QStringLiteral("color: #ff4a4a;") : QString());
    overlay_->setDisplayState(smoothFreqHz_, smoothPwrDb_, fMinSpin_->value(), fMaxSpin_->value(), thresholdSpin_->value(),
                              offsetXSpin_->value(), offsetYSpin_->value(), isRecording_);
}

void AcousticMainWindow::captureScreenshot()
{
    const QPixmap shot = videoContainer_->grab();
    const QString name = QStringLiteral("Acoustic_Capture_%1.png").arg(QDateTime::currentDateTime().toString(QStringLiteral("yyyyMMdd_HHmmss")));
    shot.save(name, "PNG");
}

void AcousticMainWindow::onScenarioChanged(int index)
{
    if (index == 0) {
        fMinSpin_->setValue(20.0);
        fMaxSpin_->setValue(FreqMaxKHz);
    } else if (index == 1) {
        fMinSpin_->setValue(20.0);
        fMaxSpin_->setValue(FreqMaxKHz);
    } else if (index == 2) {
        fMinSpin_->setValue(1.0);
        fMaxSpin_->setValue(FreqMaxKHz);
    }
    sendFreqBandCmd();
}

bool AcousticMainWindow::parseCloudPacket(const QByteArray &packet, std::array<quint8, CloudW * CloudH> *grid, float *freqKHz, float *pwrDb)
{
    if (packet.size() != CloudPacketBytes) {
        return false;
    }

    const char *data = packet.constData();
    if (readUInt32LE(data) != CloudMagic) {
        return false;
    }

    const float freqHz = readFloatLE(data + 4);
    const float rawPower = readFloatLE(data + 8);
    *freqKHz = freqHz / 1000.0f;
    *pwrDb = rawPower > 1.0f ? 10.0f * std::log10(rawPower) : 0.0f;

    for (int y = 0; y < CloudH; ++y) {
        const int dstY = CloudFlipY ? (CloudH - 1 - y) : y;
        for (int x = 0; x < CloudW; ++x) {
            (*grid)[dstY * CloudW + x] = static_cast<quint8>(data[12 + y * CloudW + x]);
        }
    }
    return true;
}

bool AcousticMainWindow::parseWavePacket(const QByteArray &packet, std::array<qint16, WaveformPoints> *samples,
                                         float *samplingRate, quint16 *channel)
{
    if (packet.size() != WavePacketBytes || readUInt32LE(packet.constData()) != WaveMagic) {
        return false;
    }

    *samplingRate = readFloatLE(packet.constData() + 4);
    std::memcpy(channel, packet.constData() + 8, sizeof(*channel));
    quint16 sampleCount = 0;
    std::memcpy(&sampleCount, packet.constData() + 10, sizeof(sampleCount));
    if (sampleCount != WaveformPoints || *samplingRate <= 0.0f) {
        return false;
    }

    std::memcpy(samples->data(), packet.constData() + 12, WaveformPoints * sizeof(qint16));
    return true;
}

void AcousticMainWindow::updateNetwork()
{
    QByteArray latestPacket;
    QByteArray latestWavePacket;
    while (udpSocket_.hasPendingDatagrams()) {
        QByteArray datagram;
        datagram.resize(static_cast<int>(udpSocket_.pendingDatagramSize()));
        udpSocket_.readDatagram(datagram.data(), datagram.size());

        if (!isPreviewing_) {
            continue;
        }
        if (datagram.size() == CloudPacketBytes) {
            latestPacket = datagram;
        } else if (datagram.size() == WavePacketBytes) {
            latestWavePacket = datagram;
        } else if (datagram.size() == 16) {
            qWarning("Received 16-byte legacy packet; this app expects 780-byte cloud packets.");
        } else {
            qWarning("Ignored UDP packet with unexpected length: %d bytes", datagram.size());
        }
    }

    if (!latestWavePacket.isEmpty()) {
        std::array<qint16, WaveformPoints> samples{};
        float samplingRate = 0.0f;
        quint16 channel = 0;
        if (parseWavePacket(latestWavePacket, &samples, &samplingRate, &channel)) {
            waveform_->setSamples(samples, samplingRate, channel);
        }
    }

    if (!latestPacket.isEmpty()) {
        std::array<quint8, CloudW * CloudH> grid{};
        float freqKHz = 0.0f;
        float pwrDb = 0.0f;
        if (parseCloudPacket(latestPacket, &grid, &freqKHz, &pwrDb)) {
            lastReceiveMs_ = QDateTime::currentMSecsSinceEpoch();
            smoothFreqHz_ = freqKHz * 1000.0;
            smoothPwrDb_ += 0.3 * (static_cast<double>(pwrDb) - smoothPwrDb_);

            const bool visible = pwrDb > thresholdSpin_->value() && fMinSpin_->value() <= freqKHz && freqKHz <= fMaxSpin_->value();
            overlay_->setCloudGrid(grid, visible);
        }
    } else {
        clearCloudIfStale();
    }

    overlay_->setDisplayState(smoothFreqHz_, smoothPwrDb_, fMinSpin_->value(), fMaxSpin_->value(), thresholdSpin_->value(),
                              offsetXSpin_->value(), offsetYSpin_->value(), isRecording_);
}

void AcousticMainWindow::clearCloudIfStale()
{
    if (QDateTime::currentMSecsSinceEpoch() - lastReceiveMs_ > 500) {
        smoothPwrDb_ += 0.3 * (0.0 - smoothPwrDb_);
        overlay_->setCloudGrid({}, false);
    }
}

void AcousticMainWindow::closeEvent(QCloseEvent *event)
{
    sendControlCmd(3);
    if (camera_) {
        camera_->stop();
    }
    udpSocket_.close();
    event->accept();
}
