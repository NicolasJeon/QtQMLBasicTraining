import QtQuick
import QtQuick.Window

Window {
    width: 300
    height: 200
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: _rect
        width: 200
        height: 48
        anchors.centerIn: parent
        color: "skyblue"
        border {
            width: 1
            color: "lightgray"
        }

        Text {
            id: _blueRect
            anchors.centerIn: parent
            text: "Click me"
            color: "black"
        }
    }
}









