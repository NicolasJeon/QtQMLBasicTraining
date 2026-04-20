import QtQuick 2.9
import QtQuick.Window 2.3

Window {
    width: 640
    height: 480
    visible: true

    ListView {
        anchors.fill: parent

        model: myModel
        delegate: Rectangle {
            height: 25
            width: 100
            color: model.itemColor
            Text {
                text: model.name
            }
        }
    }
}



