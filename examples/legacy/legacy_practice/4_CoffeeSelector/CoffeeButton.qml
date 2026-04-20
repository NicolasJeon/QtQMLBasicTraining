import QtQuick 2.4

Item {
    id: _root
    implicitWidth: Math.max(_image.implicitWidth, _label.implicitWidth)
    implicitHeight: _image.implicitHeight + _label.implicitHeight

    property alias text: _label.text
    property alias source: _image.source

    signal clicked()

    Image {
        id: _image
        scale: _mouseArea.pressed ? 0.9 : 1.0
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter

        Behavior on scale { NumberAnimation { duration: 200 }}
    }

    Text {
        id: _label
        anchors.top: _image.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: qsTr("Label")
        color: "#443224"
        font.pixelSize: 24
    }

    MouseArea {
        id: _mouseArea
        anchors.fill: parent
        onClicked: {
            _glow.visible = true
            animation.start()
            _root.clicked()
        }
    }

    // _glow, parallelAnimation
    // 1. scale 1.05 -> 1.2
    // 2. opacity 0.2 -> 1.0 -> 0.0 -> visible: false
    // 3. border.width  20 -> pause 200ms -> 10

    Rectangle {
        id: _glow
        visible: false
        width: 250
        height: width
        radius: width / 2
        scale: 1.05
        color: "#00000000"
        border.color: "#ffffff"

        ParallelAnimation {
            id: animation

            NumberAnimation {
                target: _glow
                property: "scale"
                from: 1.05
                to: 1.2
                duration: 200
            }

            SequentialAnimation {
                NumberAnimation {
                    target: _glow
                    property: "opacity"
                    from: 0.2
                    to: 1.0
                    duration: 200
                }
                NumberAnimation {
                    target: _glow
                    property: "opacity"
                    from: 1.0
                    to: 0.0
                    duration: 200
                }
                PropertyAction {
                    target: _glow
                    property: "visible"
                    value: false
                }
            }

            SequentialAnimation {
                PropertyAction {
                    target: _glow
                    property: "border.width"
                    value: 20
                }

                PauseAnimation {
                    duration: 200
                }

                NumberAnimation {
                    target: _glow
                    property: "border.width"
                    from: 20
                    to: 10
                    duration: 200
                }
            }
        }
    }
}
