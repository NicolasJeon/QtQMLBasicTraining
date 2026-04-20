import QtQuick
import QtQuick.Controls.Universal 2.0
import TextBox

Item {
    Column {
        Row {
            padding: 10
            spacing: 10

            TextBox {
                state: "@driver"
                textItem.text: "생성형 AI와 대화 중이에요."
            }

            TextBox {
                state: "@passenger"
                textItem.text: "생성형 AI와 대화 중이에요."
            }
        }

        Row {
            spacing: 10

            Column {
                padding: 10
                spacing: 10

                Row {
                    spacing: 10

                    TextBox {
                        textItem.text: "생성형 AI와 대화 중이에요. 생성형 AI와 대화 중이에요."
                    }


                    TextBox {
                        state: "@ai"
                        textItem.text: "생성형 AI와 대화 중이에요."
                    }
                }

                TextBox {
                    state: "@ai"
                    textItem.text: "생성형 AI와 대화 중이에요. 생성형 AI와 대화 중이에요. 생성형 AI와 대화 중이에요. 생성형 AI와 대화 중이에요."
                }

                TextBox {
                    id: textBox
                    state: stateButtonGroup.checkedButton.text
                    textItem.text: textField.text
                }

                Row {
                    spacing: 10

                    Row {
                        spacing: 10

                        Text {
                            text: "Text:   "
                            color: "#ffffff"
                            font.pixelSize: 20
                        }

                        TextField {
                            id: textField
                            height: 36
                            width: 400
                            text: "(텍스트를 입력하세요.)"
                            font.pixelSize: 20
                            selectByMouse: true
                        }
                    }

                    Row {
                        spacing: 10

                        Text {
                            text: "State: "
                            color: "#ffffff"
                            font.pixelSize: 20
                        }

                        Row {
                            spacing: 10

                            RadioButton {
                                width: 200
                                text: "@default"
                                font.pixelSize: 20
                                checked: true
                                ButtonGroup.group: stateButtonGroup
                                background: Rectangle {
                                    radius: 5
                                    color: "white"
                                }
                            }

                            RadioButton {
                                width: 200
                                text: "@driver"
                                font.pixelSize: 20
                                ButtonGroup.group: stateButtonGroup
                                background: Rectangle {
                                    radius: 5
                                    color: "white"
                                }
                            }

                            RadioButton {
                                width: 200
                                text: "@passenger"
                                font.pixelSize: 20
                                ButtonGroup.group: stateButtonGroup
                                background: Rectangle {
                                    radius: 5
                                    color: "white"
                                }
                            }

                            RadioButton {
                                width: 200
                                text: "@ai"
                                font.pixelSize: 20
                                ButtonGroup.group: stateButtonGroup
                                background: Rectangle {
                                    radius: 5
                                    color: "white"
                                }
                            }

                            ButtonGroup {
                                id: stateButtonGroup
                            }
                        }
                    }
                }
            }
        }
    }
}
