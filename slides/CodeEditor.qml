// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle{
    id: codeEditor
    property alias text: editor.text
    property int examplePosition: 1

    width: 700
    height: 300
    color: "#3F3F3F"
    border.color: "black"
    border.width: 2
    radius: 10.0
    smooth: true

    TextEdit{
        id: editor
        color: "white"
        anchors.fill: parent
        anchors.margins: 5
        font.pointSize: presenter.fontSize / 2
        text: "import QtQuick 1.0;\nRectangle {\n\tcolor: \"red\";\n\twidth: 20;\n\theight: 20;\n}"
        Keys.onEscapePressed: {
            try{
                parent.parent.children[examplePosition].destroy();
            }catch(err){}
            var newObject = Qt.createQmlObject(editor.text, parent.parent);
        }
    }
}
