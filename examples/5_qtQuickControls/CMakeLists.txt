cmake_minimum_required(VERSION 3.16)

project(Qqc VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick QuickControls2)

qt_standard_project_setup()

qt_add_executable(appQqc
    main.cpp
)

qt_add_qml_module(appQqc
    URI Qqc
    VERSION 1.0
    QML_FILES
        Main.qml
        UseControls.qml
        UseDrawer.qml
        UseSwipeView.qml
        AppWindowHeaderFooter.qml
        AppWindowMenu.qml
)

qt_add_resources(appQqc "qqc2conf"
    PREFIX "/"
    FILES "qtquickcontrols2.conf"
)

set_target_properties(appQqc PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQqc
    PRIVATE Qt6::Quick Qt6::QuickControls2
)

install(TARGETS appQqc
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
