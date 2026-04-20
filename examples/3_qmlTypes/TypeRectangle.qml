import QtQuick
import QtQuick.Window

Window {
    width: 320
    height: 320
    visible: true

    Rectangle {
        color: "#272822"
        width: 1080
        height: 720
        // gradient: Gradient {
        //     orientation: Gradient.Vertical
        //     GradientStop { position: 0.0; color: "red" }
        //     GradientStop { position: 0.5; color: "peru" }
        //     GradientStop { position: 1.0; color: "thistle" }
        // }
    }

    Rectangle {
        x: 40
        y: 20
        width: 100
        height: 100
        color: Qt.rgba(1, 0, 0, 0.8)
    }

    Rectangle {
        x: 40
        y: 160
        width: 100
        height: width
        radius: width/2
        color: "yellow"
    }

    Rectangle {
        x: 160
        y: 20
        width: 100
        height: 100
        //radius: width/2
        gradient: Gradient {
            orientation: Gradient.Vertical
            GradientStop { position: 0.0; color: "aqua" }
            //GradientStop { position: 0.5; color: "peachpuff" }
            GradientStop { position: 1.0; color: "teal" }
        }
        border { width: 3; color: "white" }
    }

    Rectangle {
        x: 160
        y: 160
        width: 100
        height: 100
        color: "transparent"
        border { width: 3; color: "white" }
    }
}
