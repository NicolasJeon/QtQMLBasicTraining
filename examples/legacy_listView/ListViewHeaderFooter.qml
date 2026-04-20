import QtQuick
import QtQuick.Window
import QtQuick.Controls

Window {
    width: 200
    height: 480
    visible: true
    title: qsTr("Hello World")

    ListView {
        id: _view
        anchors.fill: parent
        model: _model
        delegate: _delegate
        spacing: 2
        focus: true
        onCurrentIndexChanged: {
            console.log(currentIndex)
        }

        header: Rectangle {
            color: "skyblue"
            width: ListView.view.width
            height: 20
            Text { anchors.centerIn: parent; text: "this is header" }
        }

        footer: Rectangle {
            color: "skyblue"
            width: ListView.view.width
            height: 20
            Text { anchors.centerIn: parent; text: "this is footer" }
        }

        // highlight: Rectangle {
        //     color: "lightsteelblue"
        //     radius: 5
        // }
    }

    ListModel {
        id: _model

        ListElement { name: "Marine";  point: 23; enabled: true }
        ListElement { name: "Firebat"; point: 23; enabled: true }
        ListElement { name: "SCV";     point: 23; enabled: true }
        ListElement { name: "Medic";   point: 33; enabled: true }
        ListElement { name: "Tank";    point: 34; enabled: true }
        ListElement { name: "Vulture"; point: 35; enabled: true }
        ListElement { name: "Marine";  point: 23; enabled: true }
        ListElement { name: "Firebat"; point: 23; enabled: true }
        ListElement { name: "SCV";     point: 23; enabled: true }
        ListElement { name: "Medic";   point: 33; enabled: true }
        ListElement { name: "Tank";    point: 34; enabled: true }
        ListElement { name: "Vulture"; point: 35; enabled: true }
    }

    Component {
        id: _delegate

        Rectangle {
            required property string name
            required property int point
            required property int index
            required property bool enabled

            id: _rect
            width: ListView.view.width
            height: 50
            color: _rect.enabled ? "transparent" : "#555555"
            border {
                color: "lightgray"
                width: ListView.isCurrentItem ? 2 : 1
            }

            Text {
                anchors.centerIn: parent
                text: _rect.name + `\n${_rect.point}`
                horizontalAlignment: Text.AlignHCenter
            }

            MouseArea {
                anchors.fill: parent
                enabled: _rect.enabled
                onClicked: {
                    _rect.ListView.view.currentIndex = index
                }
            }
        }
    }
}


