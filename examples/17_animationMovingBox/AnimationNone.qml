import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: _rect
        width: 150
        height: 150
        color: "orange"
        border.color: color.darker()
        border.width: 2

        Text {
            anchors.centerIn: parent
            text: `${_rect.x.toFixed(0)}, ${_rect.y.toFixed(0)}`
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: (mouse) => {
            _rect.x = mouse.x;
            _rect.y = mouse.y;
            _rect.color = Qt.rgba(Math.random(), Math.random(), Math.random())
       }
    }
}
