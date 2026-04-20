cmake_minimum_required(VERSION 3.16)

project(CoffeeSelector VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appCoffeeSelector
    main.cpp
)

qt_add_qml_module(appCoffeeSelector
    URI CoffeeSelector
    VERSION 1.0
    QML_FILES
        Main.qml
        CoffeeButton.qml
    RESOURCES
        images/Americano.png
        images/Cappucino.png
        images/Espresso.png
        images/Latte.png
        images/Macchiato.png
)

set_target_properties(appCoffeeSelector PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appCoffeeSelector
    PRIVATE Qt6::Quick
)

install(TARGETS appCoffeeSelector
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
