

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
import AndroidViewExample
import Quick3DAssets.Grand_cherokee_OptiMat2
import QtQuick.Timeline 1.0
import QtQuick3D.Helpers


Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#00eaeaea"
    state: "tex1"
    property alias timelineAnimationRunning: timelineAnimation.running
    property alias sceneCameraZ: sceneCamera.z
    property alias sceneEulerRotation: node.eulerRotation.y
    property alias carState: grand_cherokee_OptiMat2.state

    View3D {
        id: view3D
        anchors.fill: parent

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            backgroundMode: SceneEnvironment.SkyBox
            lightProbe: royal_esplanade_4k
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight

                eulerRotation.z: 92.80784
                eulerRotation.y: -32.47181
                eulerRotation.x: -60.41197
            }

            Grand_cherokee_OptiMat2 {
                id: grand_cherokee_OptiMat2
                x: 9.367
                wheelRFEulerRotationx: 708.31
                eulerRotation.x: 0
                eulerRotation.y: -46.53
                z: 40.63046
            }

            Node {
                id: node
                x: -0
                y: 89.195
                eulerRotation.z: -0
                eulerRotation.y: 0
                eulerRotation.x: -8.77684
                z: -5.41916

                PerspectiveCamera {
                    id: sceneCamera
                    x: -0
                    y: 22.964
                    z: 618.97998
                }
            }

        }


        DebugView {
            enabled: true
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 50
            source: view3D
        }
    }

    Item {
        id: __materialLibrary__
        PrincipledMaterial {
            id: defaultMaterial
            objectName: "Default Material"
            baseColor: "#4aee45"
        }

        Texture {
            id: studio_small_08_4k
            source: "images/studio_small_08_4k.hdr"
        }

        Texture {
            id: circus_arena_4k
            source: "images/circus_arena_4k.hdr"
        }

        Texture {
            id: royal_esplanade_4k
            source: "images/royal_esplanade_4k.hdr"
        }

        Texture {
            id: smokey1_4k
            source: "images/Smokey1_4k.hdr"
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: false
                loops: 1
                duration: 4000
                to: 1000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 1000
        enabled: true

        KeyframeGroup {
            target: grand_cherokee_OptiMat2
            property: "eulerRotation.y"
            Keyframe {
                value: 0
                frame: 0
            }

            Keyframe {
                value: -46.52834
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 399
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMat2
            property: "eulerRotation.x"
            Keyframe {
                value: -0.00001
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 399
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMat2
            property: "eulerRotation.z"
            Keyframe {
                value: -0.00001
                easing.bezierCurve: [0.645, 0.045, 0.355, 1, 1, 1]
                frame: 399
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMat2
            property: "wheelLFEulerRotationx"
            Keyframe {
                value: 0
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                frame: 449
            }

            Keyframe {
                value: 720
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                frame: 950
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMat2
            property: "wheelLREulerRotationx"
            Keyframe {
                value: 0
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                frame: 449
            }

            Keyframe {
                value: 720
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                frame: 950
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMat2
            property: "wheelRFEulerRotationx"
            Keyframe {
                value: 0
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                frame: 449
            }

            Keyframe {
                value: 720
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                frame: 950
            }
        }

        KeyframeGroup {
            target: grand_cherokee_OptiMat2
            property: "wheelRREulerRotationx"
            Keyframe {
                value: 0
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                frame: 449
            }

            Keyframe {
                value: 720
                easing.bezierCurve: [0.455, 0.03, 0.515, 0.955, 1, 1]
                frame: 950
            }
        }
    }
    states: [
        State {
            name: "tex1"

            PropertyChanges {
                target: sceneEnvironment
                lightProbe: studio_small_08_4k
            }
        },
        State {
            name: "tex2"

            PropertyChanges {
                target: sceneEnvironment
                lightProbe: circus_arena_4k
            }
        },
        State {
            name: "tex3"

            PropertyChanges {
                target: sceneEnvironment
                lightProbe: royal_esplanade_4k
            }
        },
        State {
            name: "tex4"
        }
    ]
}

/*##^##
Designer {
    D{i:0}D{i:3;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}
}
##^##*/

