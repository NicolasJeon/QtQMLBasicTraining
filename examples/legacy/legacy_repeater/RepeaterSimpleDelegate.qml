import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        anchors.centerIn: parent
        spacing: 2

        Repeater {
            model: 5
            delegate: _delegate
        }
    }

    Component {
        id: _delegate

        Rectangle {
            id: _rect
            width: 60
            height: 60
            color: Qt.rgba(
                       0.5 + Math.random() * 0.5,
                       0.5 + Math.random() * 0.5,
                       0.5 + Math.random() * 0.5,
                       1
                   )
            border {
                color: _rect.color.darker()
                width: 2
            }

            Text {
                anchors.centerIn: parent
                text: modelData
            }
        }
    }
}
