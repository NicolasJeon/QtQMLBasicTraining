import QtQuick
import QtQuick.Window

Window {
    id: window
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

        MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onPressed:  _rect.color = "red"
            onReleased: _rect.color = "aqua"
            // emit entered
            onDoubleClicked: {
                window.close()
            }

            onEntered: {
                _rect.color = "aqua"
            }
            // emit exited
            onExited: {
                _rect.color = "lightgray"
            }
        }
    }
}
