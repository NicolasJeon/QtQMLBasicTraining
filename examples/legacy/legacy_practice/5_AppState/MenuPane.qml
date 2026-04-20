import QtQuick

Rectangle {
    id: _root
    width: 300
    color: "orange"
    opacity: 0.9

    signal iconClicked

    MouseArea {
        anchors.fill: parent
    }

    Image {
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.margins: 10
        source: Qt.resolvedUrl("images/back.png")
        fillMode: Image.PreserveAspectFit
        width: 48

        Rectangle {
            visible: mouseArea.containsMouse
            anchors.fill: parent
            color: "transparent"
            border { width: 2; color: "white" }
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
                _root.iconClicked()
            }
        }
    }
}
