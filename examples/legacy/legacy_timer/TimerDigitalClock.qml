import QtQuick
import QtQuick.Window

Window {
    width: 500
    height: 200
    visible: true
    title: qsTr("Hello World")

    Text {
        id: _time
        anchors.centerIn: parent
        color: "black"
        font.pixelSize: 50
    }

    Text {
        id: _date
        anchors.left: _time.left
        anchors.bottom: _time.top
        color: "darkgray"
        font.pixelSize: 20
    }

    Timer {
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            var now = new Date()
            _time.text = now.toLocaleTimeString();
            _date.text = now.toLocaleDateString();
        }
    }
}
