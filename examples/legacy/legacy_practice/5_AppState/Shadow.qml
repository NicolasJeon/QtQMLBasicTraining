import QtQuick

Rectangle {
    id: _root
    color: "black"
    opacity: 0.0

    signal shadowClicked()

    MouseArea {
        anchors.fill: parent
        onClicked: {
            _root.shadowClicked()
        }
    }
}


