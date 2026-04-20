import QtQuick
import QtQuick.Window
import CppQObject

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Person {
        id: _person
        name: "Bob"
        shoeSize: 12
    }

    Text {
        anchors.centerIn: parent
        text: _person.name
        font.pixelSize: 50
    }
}



