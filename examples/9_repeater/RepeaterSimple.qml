import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true

    property var modelDataList: ["Apple", "Banana", "Carrot", "DDDD"]

    Row {
        anchors.centerIn: parent
        spacing: 8

        Repeater {
            model: modelDataList

            Rectangle {
                width: 70
                height: 70
                radius: 6

                color: Qt.rgba(
                    0.5 + Math.random() * 0.5,
                    0.5 + Math.random() * 0.5,
                    0.5 + Math.random() * 0.5,
                    1
                )

                Text {
                    anchors.centerIn: parent
                    text: modelData
                    color: "white"
                    font.bold: true
                }
            }
        }
    }
}