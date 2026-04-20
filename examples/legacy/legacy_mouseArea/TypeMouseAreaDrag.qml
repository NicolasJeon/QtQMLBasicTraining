import QtQuick
import QtQuick.Window

Window {
    id: _root
    width: 600
    height: 200
    visible: true
    title: qsTr("Hello World")

    Rectangle {
           id: _dropRect
           x: 200
           width: 50
           height: 50
           color: "red"

           DropArea {
               anchors.fill: parent
               keys: ["rectangle"]
           }
       }

       Rectangle {
           id: _dropRect2
           x: 400
           width: 50
           height: 50
           color: "blue"

           DropArea {
               anchors.fill: parent
               keys: ["rectangle"]
           }
       }

       Rectangle {
           id: _rect
           y: height / 2
           width: 25
           height: 25
           color: "darkgreen"
           border { color: "black"; width: 1 }

           Drag.keys: [ "rectangle" ]
           Drag.active: true
           Drag.hotSpot.x: width / 2
           Drag.hotSpot.y: height / 2

           MouseArea {
               anchors.fill: parent
               drag {
                   target: _rect
                   axis: Drag.XAxis
                   minimumX: 0
                   maximumX: _root.width - _rect.width
               }

               onReleased: {
                   console.log(_rect.Drag.target)
                   if (_rect.Drag.target) {
                       _rect.x = _rect.Drag.target.parent.x + (_rect.Drag.target.parent.width / 2 - _rect.width / 2)
                   } else {
                       _rect.x = 0
                   }
               }
           }
       }

}
