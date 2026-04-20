cmake_minimum_required(VERSION 3.16)

project(QtObject VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()
qt_policy(SET QTP0001 OLD)

qt_add_executable(appQtObject
    main.cpp
)

set_source_files_properties(QtObjectSingleton.qml PROPERTIES
    QT_QML_SINGLETON_TYPE TRUE
)

qt_add_qml_module(appQtObject
    URI QtObject
    VERSION 1.0
    QML_FILES
        Main.qml
        QtObjectInnerBefore.qml
        QtObjectInnerAfter.qml
        QtObjectSingleton.qml
        QtObjectSingletonConsumer.qml
)

set_target_properties(appQtObject PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appQtObject
    PRIVATE Qt6::Quick
)

install(TARGETS appQtObject
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
