import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Row {
        anchors.centerIn: parent
        spacing: 2

        Repeater {
            model: [ "Marine", "Firebat", "Medic" ]
            delegate: _delegate
        }
    }

    Component {
        id: _delegate

        Rectangle {
            required property string modelData

            id: _rect
            width: 100
            height: 100
            color: Qt.rgba(Math.random(1.0),
                           Math.random(1.0),
                           Math.random(1.0),
                           Math.random(1.0))
            border {
                color: _rect.color.darker()
                width: 2
            }

            Text {
                anchors.centerIn: parent
                text: _rect.modelData
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }
}
