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

        Behavior on x { NumberAnimation { duration: 2000 } }
        Behavior on y { NumberAnimation { duration: 2000 } }
        Behavior on color { ColorAnimation { duration: 2000 } }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: (mouse) => {
            _rect.x = mouse.x;
            _rect.y = mouse.y;
            _rect.color = Qt.rgba(Math.random(), Math.random(), Math.random())
        }
    }

    // Text {
    //     id: _text
    //     property int xx: 0

    //     anchors.top: parent.top
    //     anchors.right: parent.right
    //     anchors.rightMargin: 20
    //     text: xx
    //     font.pixelSize: 48

    //     Behavior on xx {
    //         NumberAnimation { duration: 2000 }
    //     }
    // }

    // MouseArea {
    //     anchors.fill: parent
    //     onClicked: {
    //         _text.xx = 1000
    //     }
    // }
}


