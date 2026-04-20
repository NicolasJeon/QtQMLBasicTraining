import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    property url textureData: "maps/textureData.png"
    property url textureData9: "maps/textureData9.png"
    property url textureData23: "maps/textureData23.png"
    property url textureData25: "maps/textureData25.png"
    property alias wheelLFEulerRotationx: wheelLF.eulerRotation.x
    property alias wheelLREulerRotationx: wheelLR.eulerRotation.x
    property alias wheelRFEulerRotationx: wheelRF.eulerRotation.x
    property alias wheelRREulerRotationx: wheelRR.eulerRotation.x

    state: "Close"
    Texture {
        id: _3_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData
    }
    Texture {
        id: _0_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData9
    }
    Texture {
        id: _1_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData23
    }
    Texture {
        id: _2_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: node.textureData25
    }

    // Nodes:
    Model {
        id: body
        objectName: "body"
        rotation: Qt.quaternion(0.707107, 0.707107, 0, 0)
        scale.x: 100
        scale.y: 100
        scale.z: 100
        source: "meshes/body_mesh.mesh"
        materials: [
            grand_Cherokee___Car_Color_material,
            grand_Cherokee___Chrome_material,
            grand_Cherokee___Glossy_Black_material,
            grand_Cherokee___Glass___Tint_material,
            grand_Cherokee___Glass___Polarized_material,
            grand_Cherokee___Photo_Tex___Rough_0_material,
            grand_Cherokee___Photo_Tex___Rough_0_material,
            grand_Cherokee___Wipers___Plastic_001_material,
            grand_Cherokee___Pure_Black_001_material
        ]
        Model {
            id: brakeLF
            objectName: "brakeLF"
            x: 0.8221435546875
            y: 1.628387451171875
            z: -0.3982696533203125
            scale.x: 1.64375
            scale.y: 1.53545
            scale.z: 1.68522
            source: "meshes/brakeLF_mesh.mesh"
            materials: [
                grand_Cherokee___Photo_Tex___Rough_0_001_material
            ]
            Model {
                id: wheelLF
                objectName: "wheelLF"
                x: 0.00177764892578125
                z: 7.62939453125e-06
                source: "meshes/wheelLF_mesh.mesh"
                scale.y: 0.9
                eulerRotation.x: 0
                materials: [
                    grand_Cherokee___Glossy_Black_001_material,
                    grand_Cherokee___Photo_Tex_material,
                    grand_Cherokee___Photo_Tex___Rough_0_material,
                    grand_Cherokee___Wheel_material
                ]
            }
        }
        Model {
            id: brakeLR
            objectName: "brakeLR"
            x: 0.8297958374023438
            y: -1.3004302978515625
            z: -0.3982696533203125
            scale.x: 1.64375
            scale.y: 1.53545
            scale.z: 1.68522
            source: "meshes/brakeLR_mesh.mesh"
            materials: [
                grand_Cherokee___Photo_Tex___Rough_0_001_material
            ]
            Model {
                id: wheelLR
                objectName: "wheelLR"
                x: 0.00179290771484375
                y: -1.531839370727539e-05
                z: 7.62939453125e-06
                source: "meshes/wheelLR_mesh.mesh"
                scale.y: 0.9
                materials: [
                    grand_Cherokee___Glossy_Black_001_material,
                    grand_Cherokee___Photo_Tex_material,
                    grand_Cherokee___Photo_Tex___Rough_0_material,
                    grand_Cherokee___Wheel_material
                ]
            }
        }
        Model {
            id: brakeRF
            objectName: "brakeRF"
            x: -0.8221511840820312
            y: 1.628387451171875
            z: -0.3982696533203125
            scale.x: 1.64375
            scale.y: 1.53545
            scale.z: 1.68522
            source: "meshes/brakeRF_mesh.mesh"
            materials: [
                grand_Cherokee___Photo_Tex___Rough_0_001_material
            ]
            Model {
                id: wheelRF
                objectName: "wheelRF"
                x: -0.00177764892578125
                z: 7.62939453125e-06
                source: "meshes/wheelRF_mesh.mesh"
                scale.y: 0.9
                materials: [
                    grand_Cherokee___Glossy_Black_001_material,
                    grand_Cherokee___Photo_Tex_material,
                    grand_Cherokee___Photo_Tex___Rough_0_material,
                    grand_Cherokee___Wheel_material
                ]
            }
        }
        Model {
            id: brakeRR
            objectName: "brakeRR"
            x: -0.829803466796875
            y: -1.3004608154296875
            z: -0.3982696533203125
            scale.x: 1.64375
            scale.y: 1.53545
            scale.z: 1.68522
            source: "meshes/brakeRR_mesh.mesh"
            materials: [
                grand_Cherokee___Photo_Tex___Rough_0_001_material
            ]
            Model {
                id: wheelRR
                objectName: "wheelRR"
                x: -0.00179290771484375
                y: 1.531839370727539e-05
                z: 7.62939453125e-06
                source: "meshes/wheelRR_mesh.mesh"
                scale.y: 0.9
                materials: [
                    grand_Cherokee___Glossy_Black_001_material,
                    grand_Cherokee___Photo_Tex_material,
                    grand_Cherokee___Photo_Tex___Rough_0_material,
                    grand_Cherokee___Wheel_material
                ]
            }
        }
        Model {
            id: doorLF
            objectName: "doorLF"
            x: 0.9229210615158081
            y: 1.0467400550842285
            z: -0.8789626359939575
            source: "meshes/doorLF_mesh.mesh"
            materials: [
                grand_Cherokee___Car_Color_material,
                grand_Cherokee___Chrome_material,
                grand_Cherokee___Glossy_Black_material,
                grand_Cherokee___Glass___Tint_material,
                grand_Cherokee___Photo_Tex___Rough_0_001_material,
                grand_Cherokee___Wipers___Plastic_001_material
            ]
        }
        Model {
            id: doorLR
            objectName: "doorLR"
            x: 0.9368510246276855
            y: -0.011643514037132263
            z: -0.9645206928253174
            source: "meshes/doorLR_mesh.mesh"
            materials: [
                grand_Cherokee___Car_Color_material,
                grand_Cherokee___Chrome_material,
                grand_Cherokee___Glossy_Black_material,
                grand_Cherokee___Glass___Tint_material
            ]
        }
        Model {
            id: doorRF
            objectName: "doorRF"
            x: -0.9229199290275574
            y: 1.0467400550842285
            z: -0.8789626359939575
            source: "meshes/doorRF_mesh.mesh"
            materials: [
                grand_Cherokee___Car_Color_material,
                grand_Cherokee___Chrome_material,
                grand_Cherokee___Glossy_Black_material,
                grand_Cherokee___Glass___Tint_material,
                grand_Cherokee___Photo_Tex___Rough_0_001_material,
                grand_Cherokee___Wipers___Plastic_001_material
            ]
        }
        Model {
            id: doorRR
            objectName: "doorRR"
            x: -0.9368499517440796
            y: -0.011643514037132263
            z: -0.9645206928253174
            source: "meshes/doorRR_mesh.mesh"
            materials: [
                grand_Cherokee___Car_Color_material,
                grand_Cherokee___Chrome_material,
                grand_Cherokee___Glossy_Black_material,
                grand_Cherokee___Glass___Tint_material
            ]
        }
    }

    Node {
        id: __materialLibrary__

        PrincipledMaterial {
            id: grand_Cherokee___Glass___Polarized_material
            objectName: "Grand_Cherokee - Glass - Polarized"
            metalness: 1
            roughness: 0
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: grand_Cherokee___Photo_Tex___Rough_0_material
            baseColor: "#ffffff"
            objectName: "Grand_Cherokee - Photo_Tex - Rough 0"
            baseColorMap: _0_texture
            roughness: 0.2074085921049118
            alphaMode: PrincipledMaterial.Mask
        }

        PrincipledMaterial {
            id: grand_Cherokee___Wipers___Plastic_001_material
            objectName: "Grand_Cherokee - Wipers - Plastic.001"
            baseColor: "#ff010101"
            roughness: 0.800000011920929
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: grand_Cherokee___Pure_Black_001_material
            objectName: "Grand_Cherokee - Pure Black.001"
            baseColor: "#ff000000"
            roughness: 1
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: grand_Cherokee___Photo_Tex___Rough_0_001_material
            objectName: "Grand_Cherokee - Photo_Tex - Rough 0.001"
            baseColorMap: _3_texture
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: grand_Cherokee___Glossy_Black_001_material
            objectName: "Grand_Cherokee - Glossy Black.001"
            baseColor: "#ff030303"
            roughness: 0.218894824385643
            alphaMode: PrincipledMaterial.Default
        }

        PrincipledMaterial {
            id: grand_Cherokee___Photo_Tex_material
            baseColor: "#ffffff"
            objectName: "Grand_Cherokee - Photo_Tex"
            baseColorMap: _0_texture
            roughness: 0.24930353462696075
            alphaMode: PrincipledMaterial.Mask
        }

        PrincipledMaterial {
            id: grand_Cherokee___Wheel_material
            baseColorMap: _1_texture
            objectName: "Grand_Cherokee - Wheel"
            roughness: 0.24930353462696075
            normalMap: _2_texture
            alphaMode: PrincipledMaterial.Default
        }

        PrincipledMaterial {
            id: grand_Cherokee___Car_Color_material
            objectName: "Grand_Cherokee - Car Color"
            baseColor: "#ff0d0d0d"
            roughness: 0.10000000149011612
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: grand_Cherokee___Chrome_material
            objectName: "Grand_Cherokee - Chrome"
            baseColor: "#ffcccccc"
            metalness: 1
            roughness: 0.10000000149011612
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: grand_Cherokee___Glossy_Black_material
            objectName: "Grand_Cherokee - Glossy Black"
            baseColor: "#ff030303"
            metalness: 0.800000011920929
            roughness: 0.20000000298023224
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }

        PrincipledMaterial {
            id: grand_Cherokee___Glass___Tint_material
            objectName: "Grand_Cherokee - Glass - Tint"
            metalness: 1
            roughness: 0
            cullMode: PrincipledMaterial.NoCulling
            alphaMode: PrincipledMaterial.Opaque
        }
    }
    states: [
        State {
            name: "Close"
        },
        State {
            name: "Open"

            PropertyChanges {
                target: doorLF
                eulerRotation.y: 0.00003
                eulerRotation.x: 0.00001
                eulerRotation.z: 48.61909
            }

            PropertyChanges {
                target: doorLR
                eulerRotation.z: 35
            }

            PropertyChanges {
                target: doorRF
                eulerRotation.z: -35
            }

            PropertyChanges {
                target: doorRR
                eulerRotation.z: -35
            }
        }
    ]
    transitions: [
        Transition {
            id: transition
            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 52
                    }

                    PropertyAnimation {
                        target: doorRF
                        property: "eulerRotation.z"
                        easing.bezierCurve: [0.445,0.05,0.55,0.95,1,1]
                        duration: 448
                    }
                }
            }

            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: doorLF
                        property: "eulerRotation.z"
                        easing.bezierCurve: [0.445,0.05,0.55,0.95,1,1]
                        duration: 450
                    }
                }
            }

            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: doorRR
                        property: "eulerRotation.z"
                        easing.bezierCurve: [0.445,0.05,0.55,0.95,1,1]
                        duration: 450
                    }
                }
            }

            ParallelAnimation {
                SequentialAnimation {
                    PauseAnimation {
                        duration: 50
                    }

                    PropertyAnimation {
                        target: doorLR
                        property: "eulerRotation.z"
                        easing.bezierCurve: [0.445,0.05,0.55,0.95,1,1]
                        duration: 450
                    }
                }
            }
            to: "*"
            from: "*"
        }
    ]

    // Animations:
}

/*##^##
Designer {
    D{i:0;cameraSpeed3d:25;cameraSpeed3dMultiplier:1}D{i:37;transitionDuration:2000}
}
##^##*/
