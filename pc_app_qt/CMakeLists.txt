cmake_minimum_required(VERSION 3.16)

project(AcousticImagerQt LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_AUTOMOC ON)

find_package(Qt5 REQUIRED COMPONENTS Widgets Network Multimedia MultimediaWidgets)

add_executable(AcousticImagerQt
    main.cpp
    AcousticMainWindow.h
    AcousticMainWindow.cpp
)

target_link_libraries(AcousticImagerQt PRIVATE
    Qt5::Widgets
    Qt5::Network
    Qt5::Multimedia
    Qt5::MultimediaWidgets
)