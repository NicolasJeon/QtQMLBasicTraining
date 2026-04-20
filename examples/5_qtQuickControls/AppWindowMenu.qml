import QtQuick
import QtQuick.Controls

ApplicationWindow {
    id: _root
    width: 400
    height: 600
    visible: true
    title: qsTr("Hi")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            Action { text: "New" }
            Action { text: "Open" }
            MenuSeparator { }
            Action {
                text: qsTr("Exit")
                onTriggered: _root.close()
            }
        }

        Menu {
            title: qsTr("Edit")
            Action { text: "Preferences..." }
            Menu {
                title: qsTr("Edit1")
                Action { text: "Preferences1..." }
                Menu {
                    title: qsTr("Edit2")
                    Action { text: "Preferences2..."
                        onTriggered: {
                            _root.title = "HellOOOOOOOOOOOOOOOOOOOO"
                        }
                    }
                }
            }
        }

        Menu {
            title: qsTr("Help")
            Action { text: "About" }
        }
    }
}
