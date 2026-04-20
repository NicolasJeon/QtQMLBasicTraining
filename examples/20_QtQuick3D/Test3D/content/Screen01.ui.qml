
/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/
import QtQuick 6.5
import QtQuick.Controls 6.5
import QtQuick3D 6.5
import QtQuick3D.Effects 6.5
import Test3D
import Quick3DAssets.Grand_cherokee_OptiMat3
import QtQuick.Timeline 1.0
import Quick3DAssets.Grand_cherokee_OptiMatV2

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    property alias carState: grand_cherokee_OptiMat3.state
    property alias carState2: grand_cherokee_OptiMatV2.state
    property alias timeLineAnimation: timelineAnimation
    property alias camera: sceneCamera

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: -31.168
                y: 440.398
                eulerRotation.z: 0.00002
                eulerRotation.y: -0.00001
                eulerRotation.x: -50.42028
                z: 364.06674
            }

            PerspectiveCamera {
                id: sceneCamera
                x: 0.588
                y: 768.062
                eulerRotation.z: 0.00003
                eulerRotation.y: -0.00001
                eulerRotation.x: -49.40543
                z: 487.44998
            }

            Grand_cherokee_OptiMat3 {
                id: grand_cherokee_OptiMat3
                x: 8.828
                y: 0
                z: -1097.1366
            }

            Grand_cherokee_OptiMatV2 {
                id: grand_cherokee_OptiMatV2
                x: 182.867
                y: -0
                z: 95.03186
            }
        }
    }

    Item {
        id: __materialLibrary__
        PrincipledMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            baseColor: "#4aee45"
        }
    }

    Text {
        text: qsTr("Hello Test3D")
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 100
        font.family: Constants.font.family
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                paused: false
                running: false
                loops: 1
                duration: 5000
                to: 1000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 1000
        enabled: true

        KeyframeGroup {
            target: grand_cherokee_OptiMat3
            property: "y"
            Keyframe {
                value: 0.00014
                frame: 0
            }

            Keyframe {
                value: -0
                frame: 739
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMat3
            property: "z"
            Keyframe {
                value: -1156.78687
                frame: 0
            }

            Keyframe {
                value: 26.63708
                frame: 739
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMat3
            property: "x"
            Keyframe {
                value: 8.82808
                frame: 0
            }

            Keyframe {
                value: 8.82794
                frame: 739
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMat3
            property: "eulerRotation.x"
            Keyframe {
                value: -0.00004
                frame: 804
            }

            Keyframe {
                value: 19.27974
                frame: 888
            }

            Keyframe {
                value: -3.8819
                frame: 1000
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMat3
            property: "eulerRotation.y"
            Keyframe {
                value: 176.9146
                frame: 804
            }

            Keyframe {
                value: 72.64584
                frame: 888
            }

            Keyframe {
                value: -0.18093
                frame: 1000
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMat3
            property: "eulerRotation.z"
            Keyframe {
                value: 0
                frame: 804
            }

            Keyframe {
                value: 85.20013
                frame: 888
            }

            Keyframe {
                value: -1.94311
                frame: 1000
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMatV2
            property: "x"
            Keyframe {
                value: 269.51056
                frame: 0
            }

            Keyframe {
                value: 495.94788
                frame: 241
            }

            Keyframe {
                value: 495.94791
                frame: 655
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMatV2
            property: "y"
            Keyframe {
                value: -0.00006
                frame: 0
            }

            Keyframe {
                value: -0.00009
                frame: 241
            }

            Keyframe {
                value: -0.00004
                frame: 655
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMatV2
            property: "z"
            Keyframe {
                value: -338.10178
                frame: 655
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMatV2
            property: "eulerRotation.x"
            Keyframe {
                value: 17.3905
                frame: 764
            }

            Keyframe {
                value: 17.3905
                frame: 911
            }

            Keyframe {
                value: 28.57944
                frame: 1000
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMatV2
            property: "eulerRotation.y"
            Keyframe {
                value: -179.99997
                frame: 764
            }

            Keyframe {
                value: 38.71043
                frame: 1000
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMatV2
            property: "eulerRotation.z"
            Keyframe {
                value: -180
                frame: 764
            }

            Keyframe {
                value: 50.29236
                frame: 911
            }

            Keyframe {
                value: -46.03173
                frame: 1000
            }
        }
    }
}
