import QtQuick
import QtQuick.Window

Window {
    width: 640
    height: 480
    visible: true
    title: QtObjectSingleton.title

    Rectangle {
        anchors.fill: parent
        color: QtObjectSingleton.backgroundColor
    }
}
