import QtQuick
import QtQuick.Window

Window {
    id: _root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: _background
        anchors.fill: parent
    }

    Timer {
        id: _timer

        property int index: 0
        readonly property var heights: [150, 400, 150, 300, 150, 200]

        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            _root.height = _timer.heights[_timer.index]
            _background.color = Qt.rgba(Math.random(), Math.random(), Math.random())

            if (++_timer.index >= _timer.heights.length) {
                _timer.index = 0
            }
        }
    }
}


