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

    // https://github.com/crystalring/QtQMLBasicTraining

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

            onPressed: {
                console.log("Pressed")
                accTimer.running = true
                brTimer.running = false
            }

            onReleased: {
                console.log("Released")
                accTimer.running = false
                brTimer.running = true
            }
        }

        Timer {
            id: accTimer
            interval: 50
            running: false
            repeat: true

            onTriggered: {
                if (needle.rotation < 360)
                    needle.rotation += 2
            }
        }

        Timer {
            id: brTimer
            interval: 50
            running: false
            repeat: true

            onTriggered: {
                if (needle.rotation > 0)
                    needle.rotation -= 2
            }
        }
    }
}


