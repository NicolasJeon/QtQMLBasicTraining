import QtQuick
import QtQuick.Window
import QtQuick.Controls

ApplicationWindow {
    id: root
    width: 320
    height: 480
    visible: true
    title: qsTr("Hello World")

    property Item rect: Rectangle {
        color: Qt.rgba(Math.random(), Math.random(),
                       Math.random()).lighter()

        Label {
            anchors.centerIn: parent
            font.pixelSize: 50
            text: "newItem"
        }
    }

    SwipeView {
        id: _swipe
        anchors.fill: parent

        Rectangle {
            color: Qt.rgba(Math.random(), Math.random(),
                           Math.random()).lighter()

            Label {
                anchors.centerIn: parent
                font.pixelSize: 50
                text: "1"
            }
        }

        Rectangle {
            color: Qt.rgba(Math.random(), Math.random(),
                           Math.random()).lighter()

            Label {
                anchors.centerIn: parent
                font.pixelSize: 50
                text: "2"
            }
        }

        Rectangle {
            color: Qt.rgba(Math.random(), Math.random(),
                           Math.random()).lighter()

            Label {
                anchors.centerIn: parent
                font.pixelSize: 50
                text: "3"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    _swipe.insertItem(3, root.rect)
                }
            }
        }
    }

    Button {
        text: "<"
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 10
        onClicked: _swipe.decrementCurrentIndex()
    }

    Button {
        text: ">"
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 10
        onClicked: _swipe.incrementCurrentIndex()
    }

    PageIndicator {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        count: _swipe.count
        currentIndex: _swipe.currentIndex
    }
}
