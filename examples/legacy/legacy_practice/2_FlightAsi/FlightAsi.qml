import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Flight ASI")

    Rectangle {
        anchors.fill: parent
        color: "#444444"
    }

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: (mouse) => {
                       if (mouse.button === Qt.LeftButton) {
                           needle.rotation += 10
                       } else {
                           needle.rotation -= 10
                       }
                   }
    }

    Item {
        anchors.centerIn: parent
        width: 400
        height: width

        Image {
            source: "qrc:/FlightAsi/assets/asi_face.svg"
            sourceSize.width: parent.width
            sourceSize.height: parent.height
        }

        Image {
            id: needle
            source: "qrc:/FlightAsi/assets/asi_hand.svg"
            sourceSize.width: parent.width
            sourceSize.height: parent.height
        }

        Image {
            source: "qrc:/FlightAsi/assets/asi_case.svg"
            sourceSize.width: parent.width
            sourceSize.height: parent.height
        }

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onClicked: (mouse) => {
                           const dx = (mouse.x - width / 2)
                           const dy = (mouse.y - height / 2)
                           const rad = Math.atan2(dy, dx)
                           const degree = rad / Math.PI * 180;

                           needle.rotation = degree + 90
                           console.log(mouse.x, mouse.y, degree)
                       }
            onEntered: {
                console.log("Entered")
            }
        }
    }
}
