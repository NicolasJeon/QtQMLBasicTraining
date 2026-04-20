// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0-only

import QtQuick 6.5
import Test3D
import QtQuick.Controls 6.5

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "Test3D"

    Screen01 {
        id: mainScreen
        x: 71
        y: 0

        Button {
            id: button
            x: 39
            y: 196
            text: qsTr("Closed")

            onClicked: {
                mainScreen.carState = "Closed"
            }
        }

        Button {
            id: button1
            x: 150
            y: 196
            text: qsTr("Opened")
            onClicked: {
                mainScreen.carState = "Opened"
            }
        }

        Button {
            id: button3
            x: 35
            y: 324
            text: qsTr("Closed")

            onClicked: {
                mainScreen.carState2 = "Closed"
            }
        }

        Button {
            id: button4
            x: 151
            y: 324
            text: qsTr("Opened")
            onClicked: {
                mainScreen.carState2 = "Opened"
            }
        }

        Button {
            id: button2
            x: 481
            y: 51
            text: qsTr("timeline Animation Start")
            onClicked: {
                mainScreen.timeLineAnimation.start()
            }
        }

        Slider {
            id: slider
            x: 325
            y: 335
            stepSize: 0.1
            from: 0
            to: 100
            value: 0
            onValueChanged: {
                mainScreen.camera.y += value
            }
        }
    }
}

