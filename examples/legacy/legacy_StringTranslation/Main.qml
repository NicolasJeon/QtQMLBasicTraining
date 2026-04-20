import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Application!!")

    Column {
        anchors.centerIn: parent

        Repeater {
            model: [
                qsTr("Hi"),
                qsTr("Good Morning")
            ]

            delegate: Text {
                required property string modelData

                text: modelData
                font.pixelSize: 50
            }
        }
    }
}
