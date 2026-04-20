import QtQuick
import QtQuick.Window

Window {
    width: 200
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListModel {
        id: _model

        ListElement { name: "Marine";  point: 23 }
        ListElement { name: "Firebat"; point: 23 }
        ListElement { name: "SCV";     point: 23 }
        ListElement { name: "Medic";   point: 33 }
        ListElement { name: "Tank";    point: 34 }
        ListElement { name: "Vulture"; point: 35 }
        ListElement { name: "Marine";  point: 23 }
        ListElement { name: "Firebat"; point: 23 }
        ListElement { name: "SCV";     point: 23 }
        ListElement { name: "Medic";   point: 33 }
        ListElement { name: "Tank";    point: 34 }
        ListElement { name: "Vulture"; point: 35 }
    }

    ListView {
        id: _view
        anchors.fill: parent
        model: _model
        delegate: _delegate
        spacing: 2
        onCurrentIndexChanged: {
            console.log(currentIndex)
        }
    }

    Component {
        id: _delegate

        Rectangle {
            required property string name
            required property int point
            required property int index

            id: _rect
            width: ListView.view.width
            height: 50
            color: "transparent"
            border {
                color: "lightgray"
                width: ListView.isCurrentItem ? 2 : 1
            }

            Text {
                anchors.centerIn: parent
                text: _rect.name + `\n${_rect.point}`/* + _rect.index*/
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }
}
