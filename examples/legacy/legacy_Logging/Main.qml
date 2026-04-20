import QtQuick
import QtQuick.Window

Window {
    id: _root
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int animatedHeight: 0

    SequentialAnimation {
        running: true
        loops: Animation.Infinite

        NumberAnimation {
            target: _root
            property: "animatedHeight"
            to: _root.height
            duration: 600
        }

        NumberAnimation {
            target: _root
            property: "animatedHeight"
            to: 0
            duration: 600
        }
    }

    Rectangle {
        width: parent.width
        height: _root.animatedHeight
        color: "pink"
    }

   MouseArea {
       anchors.fill: parent
       onClicked: logging()
   }

   LoggingCategory {
       id: _cat
       name: "qml.main"
       defaultLogLevel: LoggingCategory.Debug
   }

   // Component.onCompleted: {
   //     console.log("this is log");
   //     console.debug("this is debug");
   //     console.info("this is info");
   //     console.warn("this is warn");
   //     console.error("this is error");
   //     console.log(_cat, "this is error")
   // }

   function logging() {
       console.info("trace ")
       console.trace()
       console.time("calc")

       let a = 3;
       for (let i = 0; i < 100000000; ++i) {
           a += i;
       }

       console.log("sum =", a);
       console.timeEnd("calc");
   }
}
