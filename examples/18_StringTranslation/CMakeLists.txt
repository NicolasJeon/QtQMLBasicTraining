cmake_minimum_required(VERSION 3.16)

project(StringTranslation VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick LinguistTools)

qt_standard_project_setup()

qt_add_executable(appStringTranslation
    main.cpp
)

qt_add_qml_module(appStringTranslation
    URI StringTranslation
    VERSION 1.0
    QML_FILES
        Main.qml
)

qt_add_translations(appStringTranslation
    TS_FILES
        app_ko_KR.ts
        app_fr_FR.ts
)

set_target_properties(appStringTranslation PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appStringTranslation
    PRIVATE Qt6::Quick
)

install(TARGETS appStringTranslation
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
