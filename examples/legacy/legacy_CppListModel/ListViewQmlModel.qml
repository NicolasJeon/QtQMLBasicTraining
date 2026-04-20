import QtQuick
import QtQuick.Window
import QtQuick.Controls
import CppListModel

Window {
    width: 400
    height: 480
    visible: true
    title: qsTr("Hello World")

    // ListModel {
    //     id: _model

    //     ListElement { name: "Marine";  point: 11 }
    //     ListElement { name: "Firebat"; point: 34 }
    //     ListElement { name: "SCV";     point: 27 }
    //     ListElement { name: "Medic";   point: 18 }
    //     ListElement { name: "Tank";    point: 29 }
    //     ListElement { name: "Vulture"; point: 35 }
    //     ListElement { name: "Marine";  point: 23 }
    //     ListElement { name: "Firebat"; point: 23 }
    //     ListElement { name: "SCV";     point: 32 }
    //     ListElement { name: "Medic";   point: 33 }
    //     ListElement { name: "Tank";    point: 15 }
    //     ListElement { name: "Vulture"; point: 35 }
    // }


    ListView {
        id: _view
        anchors.fill: parent
        model: cppModel
        delegate: _delegate
        spacing: 2
    }

    Component {
        id: _delegate

        Item {
            required property string name
            required property int point
            required property int index

            id: _item
            width: ListView.view.width
            height: 50

            Rectangle {
                id: _rect
                width: parent.width * point / 50
                height: parent.height
                color: Qt.rgba(Math.random(), Math.random(),
                               Math.random(), 1.0)
                border {
                    color: "lightgray"
                    width: ListView.isCurrentItem ? 2 : 1
                }
            }

            Text {
                anchors.fill: parent
                anchors.leftMargin: 5
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                text: `${_item.index}: ${_item.name} (${_item.point})`
            }
        }
    }

    // Button {
    //     width: 100
    //     height: 100
    //     anchors.top: parent.top
    //     anchors.right: parent.right
    //     onClicked: {
    //         _model.append({ "name": "Marine",  "point": 11 })
    //         _model.clear()
    //     }
    // }
}

