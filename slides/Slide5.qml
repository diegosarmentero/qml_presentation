import Qt 4.7
import QtQuick 1.1

Rectangle {
    anchors.fill: parent

    Text {
        id: txtTitle
        color: "#3549a0"
        anchors.fill: parent
        text: qsTr("Animaciones y Transiciones")
        font.bold: true
        font.pointSize: presenter.fontSize * 2
        verticalAlignment: Text.AlignTop
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: 30
    }


    Item {
        anchors.fill: parent
        anchors.topMargin: 200
        anchors.leftMargin: 50
        Row {
            spacing: 200
            Column {
                spacing: 2
                DotText{text: "Transition"}
                DotText{text: "SequentialAnimation"}
                DotText{text: "ParallelAnimation"}
                DotText{text: "Behavior"}
                DotText{text: "PropertyAction"}
                DotText{text: "PauseAnimation"}
                DotText{text: "SmoothedAnimation"}
                DotText{text: "SpringAnimation"}
                DotText{text: "ScriptAction"}
            }
            Column {
                spacing: 2
                Text{font.pointSize: presenter.fontSize / 2; text: "Elementos que animan Propiedades basados en el tipo de dato"}
                DotText{text: "PropertyAnimation"}
                DotText{text: "NumberAnimation"}
                DotText{text: "Vector3dAnimation"}
                DotText{text: "ColorAnimation"}
                DotText{text: "RotationAnimation"}
                DotText{text: "ParentAnimation"}
                DotText{text: "AnchorAnimation"}
            }
        }
    }
}
