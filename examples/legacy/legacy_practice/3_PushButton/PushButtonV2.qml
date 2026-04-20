import QtQuick

Rectangle {
    id: _rect
    width: 200
    height: 48
    focus: true

    color: "skyblue"
    border.color: "lightgray"
    state: mouseArea.pressed ? "@pressed" : (mouseArea.isEntered? "@entered" : "@normal")

    // property string text: "Click Me"

    property alias text: _text.text
    property alias fontColor: _text.color
    property color hoverColor: "salmon"

    signal clicked()

    Keys.onSpacePressed: {
        // console.log("Space Pressed")
        mouseArea.entered()
    }

    Keys.onReleased: {
        // console.log("Key Released")
        mouseArea.exited()
    }

    Text {
        id: _text
        anchors.centerIn: parent
        // text: _rect.text
        text: "Click Me"
        color: "black"
        font.pixelSize: 24
    }

    states: [
        State {
            name: "@normal"
            PropertyChanges {
                target: _rect
                color: "skyblue"
            }
            PropertyChanges {
                target: _text
                anchors.verticalCenterOffset: 0
                anchors.horizontalCenterOffset: 0
            }
        },
        State {
            name: "@pressed"
            PropertyChanges {
                target: _rect
                color: "deepskyblue"
            }
            PropertyChanges {
                target: _text
                anchors.verticalCenterOffset: 1
                anchors.horizontalCenterOffset: 1
            }
        },
        State {
            name: "@entered"
            PropertyChanges {
                target: _rect
                color: "salmon"
            }
        }
    ]

    transitions: [
        Transition {
            from: "@normal"
            to: "@entered"
            ColorAnimation { duration: 2000 }
        }
    ]

    MouseArea {
        id: mouseArea
        anchors.fill: _rect
        hoverEnabled: true

        property bool isEntered: false

        onEntered: {  // hover state
            isEntered = true
        }

        onExited: {
            isEntered = false
        }

        onClicked: {
            _rect.clicked()
        }

        onDoubleClicked: {
            // console.log("DoubleClicked")
            // window.close()
        }
    }
}
