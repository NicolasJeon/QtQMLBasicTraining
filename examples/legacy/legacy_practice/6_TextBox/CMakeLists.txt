cmake_minimum_required(VERSION 3.16)

project(TextBox VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 REQUIRED COMPONENTS Quick)

qt_add_executable(appTextBox
    main.cpp
)

qt_add_qml_module(appTextBox
    URI TextBox
    VERSION 1.0
    QML_FILES
        Main.qml
        control/TextBox.qml
        scene/TextBoxExamples.qml
        scene/TextBoxSlidingAnimation.qml
)

# image files
file(GLOB_RECURSE IMGFILES RELATIVE ${CMAKE_CURRENT_LIST_DIR} "images/*")

qt_add_resources(appTextBox "images"
    PREFIX "/"
    FILES ${IMGFILES}
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appTextBox PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appTextBox
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appTextBox
    PRIVATE Qt6::Quick
)

install(TARGETS appTextBox
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
