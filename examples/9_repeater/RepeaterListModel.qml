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
            model: _model
            delegate: _delegate
        }
    }

    ListModel {
        id: _model
        ListElement { name: "Marine";  point: 23 }
        ListElement { name: "Firebat"; point: 23 }
        ListElement { name: "SCV";     point: 23 }
        ListElement { name: "Medic";   point: 33 }
        ListElement { name: "Tank";    point: 34 }
        ListElement { name: "Vulture"; point: 35 }
    }

    Component {
        id: _delegate

        Rectangle {

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
                text: model.name + `\n${model.point}`
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }
}
