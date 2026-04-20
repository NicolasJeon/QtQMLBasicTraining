import QtQuick
import QtQuick.Window
import CppQObjectSingleton

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


    Text {
        anchors.centerIn: parent
        text: PersonVvip.name + ` (${PersonVvip.shoeSize})`
        font.pixelSize: 50
    }
}



