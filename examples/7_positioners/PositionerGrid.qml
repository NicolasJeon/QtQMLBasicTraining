import QtQuick
import QtQuick.Window

Window {
    id: _root
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioner")

    Grid {
        anchors.centerIn: parent
        spacing: 5
        // columns: 3

        Rectangle { width: 100; height: width; radius: 20; color: "#024c1c" }
        Rectangle { width: 100; height: width; radius: 20; color: "#42a51c" }
        Rectangle { width: 100; height: width; radius: 20; color: "red" }
        Rectangle { width: 100; height: width; radius: 20; color: Qt.rgba(1, 1, 0, 1) }
        Rectangle { width: 100; height: width; radius: 20; color: "orange" }
        Rectangle { width: 100; height: width; radius: 20; color: "skyblue" }
        Rectangle { width: 100; height: width; radius: 20; color: "deepskyblue" }
        Rectangle { width: 100; height: width; radius: 20; color: "lime" }
    }
}
