import QtQuick
import QtQuick.Window

Window {
    id: window
    width: 300
    height: 200
    visible: true
    title: qsTr("Hello World")

    Column {
        anchors.centerIn: parent
        spacing: 10

        PushButton {

        }

        PushButton {

        }
    }

    component PushButton : Rectangle {
        id: _rect
        width: 200
        height: 48
        focus: true

        color: "skyblue"
        border.color: "lightgray"

        Keys.onSpacePressed: {
            console.log("Space Pressed")
            mouseArea.entered()
        }

        Keys.onReleased: {
            console.log("Key Released")
            mouseArea.exited()
        }

        Text {
            id: _text
            anchors.centerIn: parent
            text: "Click me"
            color: "black"
            font.pixelSize: 24
        }

        MouseArea {
            id: mouseArea
            anchors.fill: _rect
            hoverEnabled: true

            onPressed: {
                console.log("Pressed")
                _rect.color = "deepskyblue"
                _text.anchors.verticalCenterOffset = 1
                _text.anchors.horizontalCenterOffset = 1
            }

            onReleased: {
                console.log("Released")
                _rect.color = "skyblue"
                _text.anchors.verticalCenterOffset = 0
                _text.anchors.horizontalCenterOffset = 0
            }

            onEntered: {
                console.log("Entered")
                _rect.color = "salmon"
            }

            onExited: {
                console.log("Exited")
                _rect.color = "skyblue"
            }

            onDoubleClicked: {
                console.log("DoubleClicked")
                // window.close()
            }
        }
    }
}
