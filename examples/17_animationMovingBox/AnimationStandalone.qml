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
            // _aniX.to = mouse.x;
            _aniY.to = mouse.y;
            // _aniColor.to = Qt.rgba(Math.random(), Math.random(), Math.random())

            // _aniX.start();
            _aniY.start();
            // _aniColor.start();
        }
    }

    NumberAnimation
    {
        id: _aniX
        target: _rect
        property: "x"
        duration: 2000
        easing.type: Easing.OutElastic
    }

    NumberAnimation { id: _aniY; target: _rect; property: "y"; duration: 2000; easing.type: Easing.OutElastic }
    ColorAnimation { id: _aniColor; target: _rect; property: "color"; duration: 2000; loops: Animation.Infinite }
}


