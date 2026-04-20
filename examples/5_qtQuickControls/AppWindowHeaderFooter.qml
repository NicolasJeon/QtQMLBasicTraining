import QtQuick
import QtQuick.Controls

ApplicationWindow {
    width: 400
    height: 600
    visible: true
    title: qsTr("Hi")

    header: Label {
        horizontalAlignment: Qt.AlignHCenter
        verticalAlignment: Qt.AlignVCenter
        text: qsTr("This is a header")
        height: 50
        background: Rectangle { color: "green" }
    }

    footer: Image {
        // color: "skyblue"
        height: 50
        opacity: 1.0
        source: "https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/032012/untitled-1_41.png"

        Label {
            anchors.centerIn: parent
            text: qsTr("Foooooooooooooooter")
        }
    }

    background: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0; color: "#ffffff" }
            GradientStop { position: 1; color: "#c1bbf9" }
        }
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            Action { text: "New" }
            Action {
                text: "Open"
                checkable: true

                onTriggered: {
                    console.log("onTriggered")
                }

                onToggled: {
                    console.log("onToggled")
                }
            }
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

    Image {
        // color: "skyblue"
        anchors.centerIn: parent
        height: 50
        opacity: 1.0
        source: "https://d1yjjnpx0p53s8.cloudfront.net/styles/logo-thumbnail/s3/032012/untitled-1_41.png"
        fillMode: Image.PreserveAspectFit
    }

    Column {
        anchors.centerIn: parent

        Switch { text: "switch" }
        Button { text: "click me" }
        CheckBox { text: "check" }
        Row {
            spacing: 10
            CheckBox { text: "option1" }
            CheckBox { text: "option2"
                tristate: true
            }
            CheckBox { text: "option3" }
        }
        Row {
            spacing: 10
            RadioButton { text: "option1" }
            RadioButton { text: "option2" }
            RadioButton { text: "option3" }
        }
        SpinBox { value: 50 }
        Slider { from: 0; to: 100; width: 200
            onValueChanged: {
                // console.log(value)
            }
            onPositionChanged: {
                console.log(position)
            }
        }
        RangeSlider {
            from: 0; to: 100; width: 200
            first.onMoved: console.log(first.value)
        }
        ProgressBar {
            from:0; to: 100; width: 200
            NumberAnimation on value {
                from: 0; to: 100
                duration: 2000
                loops: NumberAnimation.Infinite
            }
        }
        BusyIndicator { running: true }
    }
}

