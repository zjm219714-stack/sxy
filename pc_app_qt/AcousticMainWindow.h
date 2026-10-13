#pragma once

#include <QByteArray>
#include <QCamera>
#include <QCameraViewfinder>
#include <QComboBox>
#include <QDateTime>
#include <QDoubleSpinBox>
#include <QHostAddress>
#include <QImage>
#include <QLabel>
#include <QMainWindow>
#include <QPainter>
#include <QPushButton>
#include <QSpinBox>
#include <QTimer>
#include <QUdpSocket>
#include <QWidget>

#include <array>
#include <cstdint>
#include <random>

class AcousticOverlayWidget : public QWidget
{
    Q_OBJECT

public:
    explicit AcousticOverlayWidget(QWidget *parent = nullptr);

    void setCloudGrid(const std::array<quint8, 32 * 24> &grid, bool valid);
    void setDisplayState(double freqHz, double pwrDb, double fMinKHz, double fMaxKHz, double thresholdDb,
                         int offsetX, int offsetY, bool recording);

protected:
    void paintEvent(QPaintEvent *event) override;

private:
    static constexpr int CloudW = 32;
    static constexpr int CloudH = 24;
    static constexpr float FreqMaxKHz = 37.5f;

    QColor jetColor(double v) const;
    QImage buildHeatmapImage() const;
    void drawHud(QPainter &painter);

    std::array<quint8, CloudW * CloudH> grid_{};
    bool hasGrid_ = false;
    double smoothFreqHz_ = 0.0;
    double smoothPwrDb_ = 0.0;
    double fMinKHz_ = 1.0;
    double fMaxKHz_ = 37.5;
    double thresholdDb_ = 20.0;
    int offsetX_ = 0;
    int offsetY_ = 0;
    bool recording_ = false;
    std::mt19937 rng_;
};

class TimeWaveformWidget : public QWidget
{
public:
    explicit TimeWaveformWidget(QWidget *parent = nullptr);
    void setSamples(const std::array<qint16, 128> &samples, float samplingRate, quint16 channel);

protected:
    void paintEvent(QPaintEvent *event) override;

private:
    std::array<qint16, 128> samples_{};
    float samplingRate_ = 75000.0f;
    quint16 channel_ = 0;
    bool hasSamples_ = false;
};

class AcousticMainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit AcousticMainWindow(QWidget *parent = nullptr);
    ~AcousticMainWindow() override;

protected:
    void closeEvent(QCloseEvent *event) override;

private slots:
    void updateNetwork();
    void togglePreview(bool checked);
    void toggleRecord(bool checked);
    void captureScreenshot();
    void onScenarioChanged(int index);
    void sendFreqBandCmd();

private:
    static constexpr quint16 UdpPort = 8080;
    static constexpr quint16 ZynqCtrlPort = 8081;
    static constexpr float FreqMinKHz = 1.0f;
    static constexpr float FreqMaxKHz = 37.5f;
    static constexpr quint32 CloudMagic = 0x5A5AA5A5u;
    static constexpr quint32 WaveMagic = 0x57415645u;
    static constexpr int CloudW = 32;
    static constexpr int CloudH = 24;
    static constexpr int CloudPacketBytes = 12 + CloudW * CloudH;
    static constexpr int WaveformPoints = 128;
    static constexpr int WavePacketBytes = 12 + WaveformPoints * static_cast<int>(sizeof(qint16));
    static constexpr bool CloudFlipY = true;

    void initUi();
    void sendControlCmd(quint32 cmdValue);
    bool parseCloudPacket(const QByteArray &packet, std::array<quint8, CloudW * CloudH> *grid, float *freqKHz, float *pwrDb);
    bool parseWavePacket(const QByteArray &packet, std::array<qint16, WaveformPoints> *samples, float *samplingRate, quint16 *channel);
    void clearCloudIfStale();

    QWidget *videoContainer_ = nullptr;
    QCameraViewfinder *viewfinder_ = nullptr;
    AcousticOverlayWidget *overlay_ = nullptr;
    TimeWaveformWidget *waveform_ = nullptr;
    QPushButton *previewButton_ = nullptr;
    QPushButton *recordButton_ = nullptr;
    QPushButton *captureButton_ = nullptr;
    QSpinBox *offsetXSpin_ = nullptr;
    QSpinBox *offsetYSpin_ = nullptr;
    QComboBox *scenarioCombo_ = nullptr;
    QDoubleSpinBox *fMinSpin_ = nullptr;
    QDoubleSpinBox *fMaxSpin_ = nullptr;
    QDoubleSpinBox *thresholdSpin_ = nullptr;

    QCamera *camera_ = nullptr;
    QTimer networkTimer_;
    QUdpSocket udpSocket_;
    QHostAddress zynqAddress_ = QHostAddress(QStringLiteral("192.168.1.10"));

    bool isPreviewing_ = false;
    bool isRecording_ = false;
    double smoothPwrDb_ = 0.0;
    double smoothFreqHz_ = 0.0;
    qint64 lastReceiveMs_ = 0;
};
