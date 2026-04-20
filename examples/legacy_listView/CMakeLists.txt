cmake_minimum_required(VERSION 3.16)

project(ModelView VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appModelView
    main.cpp
)

qt_add_qml_module(appModelView
    URI ModelView
    VERSION 1.0
    QML_FILES
        Main.qml
        ListViewBasic.qml
        ListViewHighlight.qml
        ListViewHeaderFooter.qml
        ListViewClickable.qml
)

set_target_properties(appModelView PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appModelView
    PRIVATE Qt6::Quick
)

install(TARGETS appModelView
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
