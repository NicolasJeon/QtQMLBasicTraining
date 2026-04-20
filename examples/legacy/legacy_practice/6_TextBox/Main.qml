import QtQuick
import QtQuick.Controls

Window {
    width: 1920
    height: 720
    visible: true
    title: qsTr("TextBox Practice")
    color: "#000000"

    ListView {
        id: menu
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.margins: 10
        width: parent.width / 4

        model: ListModel {
            ListElement {
                text: "TextBox Examples"
                sceneQml: "scene/TextBoxExamples.qml"
            }

            ListElement {
                text: "TextBox SlidingAnimation"
                sceneQml: "scene/TextBoxSlidingAnimation.qml"
            }
        }
        delegate: Button {
            width: parent.width
            height: 100
            text: model.text
            checkable: true
            autoExclusive: true
            font.pixelSize: 32
            onClicked: {
                sceneLoader.source = model.sceneQml
            }
        }
    }

    Loader {
        id: sceneLoader
        anchors.left: menu.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
    }
}
