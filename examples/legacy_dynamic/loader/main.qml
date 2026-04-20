import QtQuick 2.4
import QtQuick.Window 2.2


Window {
    title: qsTr("Loader")
    id: root
    width: 200; height: 200
    visible: true
    color: "white"

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        font.pixelSize: 16
        text: loader.status != Loader.Ready ? "Click to add a rectangle!" : "Loaded!"
    }

    // MouseArea {
    //     anchors.fill: parent

    //     onClicked: {
    //         loader.source = "qrc:/MyRect.qml"
    //     }

    //     onDoubleClicked: {
    //         if (loader.item !== undefined) {
    //             loader.item.color = "blue"
    //         }
    //     }
    // }

    // Loader {
    //     id: loader
    //     anchors.centerIn: parent
    // }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            loader.active = true
        }

        onDoubleClicked: {
            loader.active = false
        }
    }

    Component {
        id: myrect

        Rectangle {
            width: 100
            height: 100
            color: "blue"
        }
    }

    Loader {
        id: loader
        anchors.centerIn: parent
        // source: "qrc:/MyRect.qml"
        sourceComponent: myrect
        active: false
    }
}
