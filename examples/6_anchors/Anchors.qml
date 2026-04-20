import QtQuick
import QtQuick.Window

Window {
    width: 300
    height: 200
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: _redRect
        x: 20
        y: 20
        width: 100
        height: 100
        color: "red"
    }

    Rectangle {
        id: _blueRect
        width: 100
        height: 100
        color: "blue"
    }
}









