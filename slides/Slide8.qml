import Qt 4.7
import QtQuick 1.1

Rectangle {
    anchors.fill: parent

    Text {
        id: txtTitle
        color: "#3549a0"
        anchors.fill: parent
        text: qsTr("Componentes de Interacción")
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
                DotText{text: "Flickable (Ejemplo)"}
                DotText{text: "Flipable (Ejemplo)"}
                DotText{text: "FocusPanel"}
                DotText{text: "FocusScope"}
                DotText{text: "KeyNavigation (Ejemplo)"}
                DotText{text: "Keys (Ejemplo)"}
                DotText{text: "MouseArea (Ejemplo)"}
            }
            Column {
                id: col
                spacing: 20
                CodeEditor{id: codeEditor}
            }
        }

        Component.onCompleted: {
            var newObject = Qt.createQmlObject(codeEditor.text, row);
        }
    }
}
