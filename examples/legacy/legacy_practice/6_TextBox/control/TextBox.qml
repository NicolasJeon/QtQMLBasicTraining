import QtQuick
import QtQuick.Templates as T
import QtQuick.Controls.Imagine


T.Control {
    property alias textItem: _textItem

    implicitWidth: Math.min(800,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding)

    leftPadding: 46
    rightPadding: 46
    topPadding: 21
    bottomPadding: 21
    state: "@default"

    background: NinePatchImage {
        id: _bg
        source: "qrc:/images/vr_bg_agent_box_b_w.9.png"
    }

    contentItem: Text {
        id: _textItem
        font.pixelSize: 32
        wrapMode: Text.WrapAnywhere
        maximumLineCount: 2
        elide: Text.ElideRight
    }

    states: [
        State {
            name: "@driver"
            PropertyChanges {
                target: _bg
                source: "qrc:/images/vr_bg_agent_box_b_w.9.png"
            }
        },

        State {
            name: "@passenger"
            PropertyChanges {
                target: _bg
                source: "qrc:/images/vr_bg_agent_box_y_w.9.png"
            }
        },

        State {
            name: "@ai"
            PropertyChanges {
                target: _bg
                source: "qrc:/images/vr_bg_ai_w.9.png"
            }
        },

        State {
            name: "@default"
            PropertyChanges {
                target: _bg
                source: "qrc:/images/vr_bg_agent_box_w_w.9.png"
            }
        }
    ]
}









// T.Control {
//     id: control

//     property alias textItem: textItem

//     implicitWidth: Math.min(800,
//                             implicitContentWidth + leftPadding + rightPadding)
//     implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
//                              implicitContentHeight + topPadding + bottomPadding)
//     rightPadding: 46
//     leftPadding: 46
//     topPadding: 21
//     bottomPadding: 21

//     background: NinePatchImage {
//         source: d.relativeBGPath
//     }

//     contentItem: Text {
//         id: textItem

//         font.pixelSize: 32
//         verticalAlignment: Text.AlignVCenter
//         wrapMode: Text.WrapAnywhere
//         maximumLineCount: 2
//         elide: Text.ElideRight
//     }

//     states: [
//         State {
//             name: "default"
//             PropertyChanges {
//                 target: d
//                 relativeBGPath: "qrc:/images/vr_bg_agent_box_w_w.9.png"
//             }
//         },
//         State {
//             name: "driver"
//             PropertyChanges {
//                 target: d
//                 relativeBGPath: "qrc:/images/vr_bg_agent_box_b_w.9.png"
//             }
//         },
//         State {
//             name: "passenger"
//             PropertyChanges {
//                 target: d
//                 relativeBGPath: "qrc:/images/vr_bg_agent_box_y_w.9.png"
//             }
//         },
//         State {
//             name: "ai"
//             PropertyChanges {
//                 target: d
//                 relativeBGPath: "qrc:/images/vr_bg_ai_w.9.png"
//             }
//         }
//     ]

//     QtObject {
//         id: d
//         property string relativeBGPath: "qrc:/images/vr_bg_agent_box_w_w.9.png"
//     }
// }
