import QtQuick

Rectangle {
    id: _rect
    width: 200
    height: 48
    focus: true

    color: "skyblue"
    border.color: "lightgray"

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

    MouseArea {
        id: mouseArea
        anchors.fill: _rect
        hoverEnabled: true

        onPressed: {  // pressed state
            // console.log("Pressed")
            _rect.color = "deepskyblue"
            _text.anchors.verticalCenterOffset = 1
            _text.anchors.horizontalCenterOffset = 1
        }

        onReleased: { // normal state
            // console.log("Released")
            _rect.color = "skyblue"
            _text.anchors.verticalCenterOffset = 0
            _text.anchors.horizontalCenterOffset = 0
        }

        onEntered: {  // hover state
            // console.log("Entered")
            _rect.color = _rect.hoverColor
        }

        onExited: {
            // console.log("Exited")
            _rect.color = "skyblue" // normal
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
