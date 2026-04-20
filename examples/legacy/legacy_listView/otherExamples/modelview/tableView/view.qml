import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    width: 640
    height: 480
    visible: true

    TableView {
        id: table

        property int currentRow
        property int currentColumn

        rowHeightProvider: function(row) {
            if (row === currentRow)
                return 100;
            else
                return 40;
        }
        columnWidthProvider: function(column) {
            switch(column) {
            case 3:
                return 100;
            case 4:
                return 200;
            default:
                return 300;
            }
        }

        anchors.fill: parent
        anchors.topMargin: header.implicitHeight
        model: myModel
        columnSpacing: 5
        rowSpacing: 5
        // Experiment by setting reuseItems to false, and
        // verify pooling/reuse behaviour
        reuseItems: true
        delegate: Rectangle {
            color: "lightsteelblue"
            border.color: "Red"
            border.width: TableView.view.currentRow === row && TableView.view.currentColumn === column ? 3 : 0

            TableView.onPooled: console.log("Item (" + row + "," + column + ") pooled")
            TableView.onReused: console.log("Item (" + row + "," + column + ") reused")

            Text {
                font.pixelSize: 32
                text: bookData
                anchors.verticalCenter: parent.verticalCenter
            }

            TapHandler {
                onTapped: {
                    console.log("clicked on", row, column)
                    table.currentRow = row;
                    table.currentColumn = column;
                    table.forceLayout();
                }
            }

            Timer {
                interval: 1000
                repeat: true
                running: row === 0 && column === 0
                onTriggered: console.log("Timer (" + row + "," + column + ") triggered");
            }
        }
    }


    HorizontalHeaderView {
        id: header

        syncView: table
        anchors.left: table.left
        delegate: Rectangle {
            color: Qt.darker("lightsteelblue", 1.3)

            Text {
                font.pixelSize: 32
                text: display
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }
}

