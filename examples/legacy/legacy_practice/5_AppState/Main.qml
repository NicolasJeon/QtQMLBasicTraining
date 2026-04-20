import QtQuick
import QtQuick.Window

Window {
    id: root
    width: 480
    height: 640
    visible: true
    title: qsTr("Hello World")

    Item {
        id: item
        anchors.fill: parent

        MenuBar {
            id: bar
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            height: 64

            onClicked: {
                item.state = "@opened"
            }
        }

        Contents {
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: bar.bottom
            anchors.bottom: parent.bottom

            Shadow {
                id: shadow
                anchors.fill: parent

                onShadowClicked: {
                    item.state = ""
                }
            }
        }

        MenuPane {
            id: menuPane
            anchors.right: item.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom

            onIconClicked: {
                item.state = ""
            }
        }

        states: [
            State {
                name: "@opened"
                AnchorChanges {
                    target: menuPane
                    anchors.left: item.left
                    anchors.right: undefined
                }

                PropertyChanges {
                    target: shadow
                    opacity: 0.9
                }
            }
        ]
        transitions: [
            Transition {
                from: "*"
                to: "@opened"
                AnchorAnimation { duration: 500 }
                PropertyAnimation { property: "opacity"; duration: 5000 }
            }
        ]
    }
}
