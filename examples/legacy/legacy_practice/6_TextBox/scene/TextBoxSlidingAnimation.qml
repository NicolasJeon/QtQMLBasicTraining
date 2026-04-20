import QtQuick
import QtQuick.Controls
import TextBox

Item {
    id: scene

    state: "@slideOut"

    TextBox {
        id: textBox
        anchors.horizontalCenter: parent.horizontalCenter
        state: "@ai"
        textItem.text: "생성형 AI와 대화 중이에요. 생성형 AI와 대화 중이에요. 생성형 AI와 대화 중이에요. 생성형 AI와 대화 중이에요."
    }


    Row {
        anchors.centerIn: parent
        spacing: 10

        Text {
            text: "SlideIn/Out: "
            color: "#ffffff"
            font.pixelSize: 20
        }

        Switch {
            id: inOutSwitch
            onCheckedChanged: {
                scene.state = inOutSwitch.checked ? "@slideIn" : "@slideOut"
            }
        }
    }

    states: [
        State {
            name: "@slideOut"
            PropertyChanges {
                target: textBox
                y: -textBox.height
                opacity: 0.0
            }
        },
        State {
            name: "@slideIn"
            PropertyChanges {
                target: textBox
                y: 12
                opacity: 1.0
            }
        }
    ]

    transitions: [
        Transition {
            from: "@slideOut"
            to: "@slideIn"

            ParallelAnimation {
                NumberAnimation {
                    target: textBox
                    property: "y"
                    duration: 750
                    easing.type: Easing.Linear
                }
                SequentialAnimation {
                    PauseAnimation {
                        duration: 250
                    }
                    NumberAnimation {
                        target: textBox
                        property: "opacity"
                        duration: 500
                        easing.type: Easing.InOutQuad
                    }
                }
            }
        },
        Transition {
            from: "@slideIn"
            to: "@slideOut"
            ParallelAnimation {
                NumberAnimation {
                    target: textBox
                    property: "opacity"
                    duration: 300
                    easing.type: Easing.Linear
                }
                SequentialAnimation {
                    PauseAnimation {
                        duration: 150
                    }
                    NumberAnimation {
                        target: textBox
                        property: "y"
                        duration: 750 - 150
                        easing.type: Easing.Linear
                    }
                }
            }
        }
    ]














    // states: [
    //     State {
    //         name: "slideOut"
    //         PropertyChanges {
    //             target: textBox
    //             y: -textBox.height
    //         }
    //         PropertyChanges {
    //             target: textBox
    //             opacity: 0
    //         }
    //     },
    //     State {
    //         name: "slideIn"
    //         when: inOutSwitch.checked
    //         PropertyChanges {
    //             target: textBox
    //             y: 12
    //         }
    //         PropertyChanges {
    //             target: textBox
    //             opacity: 1.0
    //         }
    //     }
    // ]

    // transitions: [
    //     Transition {
    //         from: "slideOut"
    //         to: "slideIn"
    //         ParallelAnimation {
    //             NumberAnimation {
    //                 target: textBox
    //                 property: "y"
    //                 duration: 750
    //                 easing.type: Easing.Linear
    //             }

    //             SequentialAnimation {
    //                 PauseAnimation {
    //                     duration: 250
    //                 }

    //                 NumberAnimation {
    //                     target: textBox
    //                     property: "opacity"
    //                     duration: 500
    //                     easing.type: Easing.InOutQuad
    //                 }
    //             }
    //         }
    //     },
    //     Transition {
    //         from: "slideIn"
    //         to: "slideOut"
    //         ParallelAnimation {
    //             NumberAnimation {
    //                 target: textBox
    //                 property: "opacity"
    //                 duration: 300
    //                 easing.type: Easing.Linear
    //             }
    //             SequentialAnimation {
    //                 PauseAnimation {
    //                     duration: 150
    //                 }

    //                 NumberAnimation {
    //                     target: textBox
    //                     property: "y"
    //                     duration: 600
    //                     easing.type: Easing.Linear
    //                 }
    //             }
    //         }
    //     }
    // ]
}
