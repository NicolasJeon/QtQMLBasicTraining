cmake_minimum_required(VERSION 3.16)

project(AppState VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appAppState
    main.cpp
)

qt_add_qml_module(appAppState
    URI AppState
    VERSION 1.0
    QML_FILES
        Main.qml
        MenuBar.qml
        MenuPane.qml
        Shadow.qml
        Contents.qml
    RESOURCES
        images/back.png
        images/menu.png
        images/qt-logo.png
)

set_target_properties(appAppState PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appAppState
    PRIVATE Qt6::Quick
)

install(TARGETS appAppState
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
