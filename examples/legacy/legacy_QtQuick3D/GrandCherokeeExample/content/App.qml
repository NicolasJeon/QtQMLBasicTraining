// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import AndroidViewExample
import QtQuick.Controls 6.5

Window {
    id: window
    width: 1080
    height: 720

    visible: true
    title: "AndroidViewExample"

    Rectangle {
        id: bg
        visible: true
        color: "#ffffff"
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#fff1eb"
            }

            GradientStop {
                position: 1
                color: "#ace0f9"
            }
            orientation: Gradient.Vertical
        }
    }

    Screen01 {
        id: qmlScreen
    }

    Rectangle {
        id: topBar
        y: 0
        height: 41
        color: "#405260"
        radius: 4
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 0
        anchors.rightMargin: 0

        Text {
            id: text1
            color: "#ffffff"
            text: qsTr("10 : 47")
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 28
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            id: row
            x: 792
            y: 347
            width: 128
            height: 25
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 24
            spacing: 9

            Image {
                id: signalLTE
                source: "Images/Signal LTE.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: bluetooth
                source: "Images/Bluetooth.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: windowlock
                source: "Images/Window lock.png"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: download
                source: "Images/Download.png"
                fillMode: Image.PreserveAspectFit
            }


        }
    }

    Column {
        id: controlBox
        x: 8
        y: 218
        width: 219
        height: 348
        spacing: 12

        Button {
            id: button
            width: 180
            text: qsTr("Door Open ")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: qmlScreen.carState = "Open"
        }
        Button {
            id: button4
            width: 180
            text: qsTr("Door Close ")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: qmlScreen.carState = "Close"
        }

        Button {
            id: button1
            width: 180
            text: qsTr("Timeline Animation")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: qmlScreen.timelineAnimationRunning =true
        }

        Button {
            id: button2
            property int index : 0
            width: 180
            text: qsTr("Change Scene Environment")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked:{
                index = (1+index)%4;
                qmlScreen.state = "tex"+(index+1)
            }
        }

        Text {
            id: text2
            text: qsTr("Car Rotation")
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Slider {
            id: slider
            value: 0
            to: 360
            anchors.horizontalCenter: parent.horizontalCenter
            onValueChanged: qmlScreen.sceneEulerRotation = slider.value
        }

        Text {
            id: text3
            text: qsTr("Camera Zoom")
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Slider {
            id: slider1
            value: 0
            anchors.horizontalCenter: parent.horizontalCenter
            to: 360
            onValueChanged: qmlScreen.sceneCameraZ = 700-slider1.value
        }
    }
}

