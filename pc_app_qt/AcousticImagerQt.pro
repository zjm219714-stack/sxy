QT += widgets network multimedia multimediawidgets
CONFIG += c++17 console
CONFIG -= app_bundle

TEMPLATE = app
TARGET = AcousticImagerQt

SOURCES += \
    main.cpp \
    AcousticMainWindow.cpp

HEADERS += \
    AcousticMainWindow.h