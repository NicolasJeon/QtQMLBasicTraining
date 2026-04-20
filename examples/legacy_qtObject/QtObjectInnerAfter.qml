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
        interval: 1000
        running: true
        repeat: true
        onTriggered: _inner.updateRoot()
    }

    QtObject {
        id: _inner

        property int index: 0

        readonly property var heights: [150, 400, 150, 300, 150, 200]

        function updateRoot() {
            _root.height = _inner.heights[_inner.index]
            _background.color = Qt.rgba(Math.random(), Math.random(), Math.random())

            if (++_inner.index >= _inner.heights.length) {
                _inner.index = 0
            }
        }
    }
}


