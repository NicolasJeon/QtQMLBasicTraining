import QtQuick
import QtQuick.Window

Window {
    id: _root
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioner")

    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 5

        Rectangle { width: 100; height: width; radius: 20; color: "#024c1c" }
        Rectangle { width: 100; height: width; radius: 20; color: "#42a51c" }
        Rectangle { width: 100; height: width; radius: 20; color: "red" }
        Rectangle { width: 100; height: width; radius: 20; color: Qt.rgba(1, 1, 0, 1) }

    }
}
