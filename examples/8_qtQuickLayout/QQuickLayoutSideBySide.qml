import QtQuick
import QtQuick.Window
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    color: "#f5f5f5"
    title: "RowLayout Example"

    RowLayout {
        anchors.fill: parent
        anchors.margins: 12
        spacing: 10

        Rectangle {
            color: "#F59E0B"
            Layout.preferredWidth: 160
            Layout.fillHeight: true
            radius: 10

            Text {
                anchors.centerIn: parent
                text: "Fixed\n" + parent.width + " px"
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            color: "#A3E635"
            Layout.fillWidth: true
            Layout.fillHeight: true
            radius: 10

            // Layout.minimumWidth: 120

            Text {
                anchors.centerIn: parent
                text: "Flexible\n" + parent.width + " px"
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            color: "#7DD3FC"
            Layout.preferredWidth: 100
            Layout.fillHeight: true
            radius: 10

            Text {
                anchors.centerIn: parent
                text: "Fixed\n" + parent.width + " px"
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }
}