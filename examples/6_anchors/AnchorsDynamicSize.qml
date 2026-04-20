import QtQuick
import QtQuick.Window

Window {
    width: 300
    height: 200
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: _redRect
        width: 100
        height: 100
        color: "red"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
    }

    Rectangle {
        id: _blueRect
        // no width
        height: 100
        color: "blue"
        anchors.left: _redRect.right
        anchors.right: _orangeRect.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
    }

    Rectangle {
        id: _orangeRect
        x: 150
        width: 100
        height: 100
        color: "orange"
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
    }
}









