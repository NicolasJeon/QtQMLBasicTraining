import QtQuick

Rectangle {
    id: _root

    width: 100
    height: 100
    color: "lightgray"
    border.width: 1
    border.color: "darkgray"

    signal clicked()

    Image {
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        source: Qt.resolvedUrl("images/menu.png")
        fillMode: Image.PreserveAspectFit
        width: 48

        Rectangle {
            anchors.fill: parent
            color: "transparent"
            border { width: 1; color: "darkgray" }
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true
            onClicked: {
                _root.clicked()
            }
        }
    }
}
