cmake_minimum_required(VERSION 3.16)

project(FlightAsi VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appFlightAsi
    main.cpp
)

qt_add_qml_module(appFlightAsi
    URI FlightAsi
    VERSION 1.0
    QML_FILES
        Main.qml
        FlightAsi.qml
        FlightAsiV2.qml
    RESOURCES
        assets/asi_face.svg
        assets/asi_hand.svg
        assets/asi_case.svg
)

set_target_properties(appFlightAsi PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appFlightAsi
    PRIVATE Qt6::Quick
)

install(TARGETS appFlightAsi
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
