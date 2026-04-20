import QtQuick
import QtQuick.Window

Window {
    width: 400
    height: 300
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: _rect
        x: 50
        y: 50
        width: 300
        height: 200
        color: "darkgreen"
        border { color: "black"; width: 1 }

        // MouseArea {
        //     anchors.fill: parent
        //     onClicked: console.log("clicked", mouse.x, mouse.y)
        // }

        // MouseArea {
        //     anchors.fill: parent
        //     onClicked: function myHandler(mouse) {
        //         console.log("clicked 2", mouse.x, mouse.y)
        //     }
        // }

        // MouseArea {
        //     anchors.fill: parent
        //     onClicked: function (mouse) {
        //         console.log("clicked 3", mouse.x, mouse.y)
        //     }
        // }

        // MouseArea {
        //     anchors.fill: parent
        //     onClicked: (mouse) => {
        //         console.log("clicked 4", mouse.x, mouse.y)
        //     }
        // }

        MouseArea {
            anchors.fill: parent
            onClicked: (mouse) => console.log("clicked 5", mouse.x, mouse.y)
            onWheel: (wheel) => ( console.log("wheel!!"))
        }
    }
}
