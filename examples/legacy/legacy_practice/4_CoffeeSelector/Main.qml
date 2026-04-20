import QtQuick
import QtQuick.Window

Window {
    width: 650
    height: 700
    visible: true
    title: qsTr("Coffee Selector")

    Rectangle {
        anchors.fill: parent
        color: "skyblue"
    }

    Grid {
        anchors.fill: parent
        anchors.margins: 50
        columns: 2
        spacing: 50

        CoffeeButton {
            source: Qt.resolvedUrl("images/Americano")
            text: "Americano"
        }

        CoffeeButton {
            source: Qt.resolvedUrl("images/Cappucino")
            text: "Cappucino"
        }

        CoffeeButton {
            source: Qt.resolvedUrl("images/Espresso")
            text: "Espresso"
        }

        CoffeeButton {
            source: Qt.resolvedUrl("images/Latte")
            text: "Latte"
        }
    }
}
