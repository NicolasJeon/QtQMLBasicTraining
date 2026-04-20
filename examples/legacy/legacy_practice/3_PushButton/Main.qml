import QtQuick
import QtQuick.Window

// WindowPushButton { }
// WindowPushButtonV2 { }
// WindowPushButtonV3 { }
WindowPushButtonV4 {
    Connections {
        // enabled: false
        target: button2
        function onClicked() { debugText.text = "2nd Button Clicked"}
    }
}

