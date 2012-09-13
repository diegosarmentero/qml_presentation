import Qt 4.7
import QtQuick 1.1

Rectangle {
    anchors.fill: parent

    Text {
        id: txtTitle
        color: "#3549a0"
        anchors.fill: parent
        text: qsTr("Ejemplo Animaciones")
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
            id: row
            spacing: 100
            CodeEditor{
                id: codeEditor;
                height: 600
                text: "import QtQuick 1.0;\nColumn{\n\tspacing: 5;\n\tRectangle {\n\t\tcolor: \"red\";\n\t\twidth: 20;\n\t\theight: 20;\n\t}\n\tRectangle {\n\t\tcolor: \"blue\";\n\t\twidth: 20;\n\t\theight: 20;\n\t}\n}"
            }
        }

        Component.onCompleted: {
            var newObject = Qt.createQmlObject(codeEditor.text, row);
        }
    }
}
