import QtQuick 2.4
import QtQuick.Window 2.2
import QtQml.Models 2.1
import QtQuick.Controls 2.4

Window {
    id: win

    visible: true
    width: 640
    height: 400

    property bool inGrid: false

    ListModel {
        id: myModel
        ListElement {
            display: "Item 1"
        }
        ListElement {
            display: "Item 2"
        }
        ListElement {
            display: "Item 3"
        }
        ListElement {
            display: "Item 4"
        }
        ListElement {
            display: "Item 5"
        }
        ListElement {
            display: "Item 6"
        }
        ListElement {
            display: "Item 7"
        }
        ListElement {
            display: "Item 8"
        }
        ListElement {
            display: "Item 9"
        }
    }

    Switch {
        id: slider
        checked: false
        onCheckedChanged: inGrid = checked
    }

    DelegateModel {
        id: visualModel
        delegate: packageDelegate
        model: myModel
    }

    ListView {
        id: lv
        anchors.top: slider.bottom
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        width: grid.cellWidth
        model: visualModel.parts.list
        spacing: 10
        clip: true
    }

    GridView {
        id: grid
        anchors.top: slider.bottom
        height: parent.height / 2
        width: parent.width
        cellWidth: (width - 5) / 3
        cellHeight: 55
        model: visualModel.parts.grid
        clip: true
        interactive: inGrid
    }

    Component {
        id: packageDelegate

        Package {
            id: root

            Item { id: listDelegate; width: parent.width; height: 50; Package.name: 'list' }
            Item { id: gridDelegate; width: grid.cellWidth - 5; height: 50; Package.name: 'grid' }

            Rectangle {
                id: content

                border.width: 2
                color: "lightsteelblue"

                Text { text: display; anchors.centerIn: parent }

                state: inGrid ? 'inGrid' : 'inList'
                states: [
                    State {
                        name: 'inList'
                        ParentChange { target: content; parent: listDelegate
                            width: listDelegate.width; height: listDelegate.height
                        }
                    },
                    State {
                        name: 'inGrid'
                        ParentChange {
                            target: content; parent: gridDelegate
                            x: 0; y: 0; width: gridDelegate.width; height: gridDelegate.height
                        }
                    }
                ]

                transitions: [
                    Transition {
                        ParentAnimation {
                            NumberAnimation { properties: 'x,y,width,height'; duration: 300 }
                        }
                    }
                ]
            }
        }
    }
}
