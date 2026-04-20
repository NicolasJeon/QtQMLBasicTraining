import QtQuick
import QtQuick.Window

Window {
    id: _root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 300
        height: 200
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.bottom: parent.bottom        
        anchors.bottomMargin: 20
        color: "orange"

        Text {
            id: _text
            anchors.centerIn: parent
            font.pixelSize: 15
            text: `width = ${parent.width}`
        }
    }

    Rectangle {
        width: 20
        height: width
        radius: width / 2
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 20
        color: "blue"
    }

    Text {
        anchors {
            right: parent.right
            bottom: parent.bottom
            rightMargin: 10
            bottomMargin: 10
        }

        color: "black"
        text: `${_root.title} (${_root.width} x ${_root.height})`
    }
}
