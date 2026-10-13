#include <QApplication>
#include "AcousticMainWindow.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    AcousticMainWindow window;
    window.show();
    return app.exec();
}