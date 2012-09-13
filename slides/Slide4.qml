import QtQuick 1.1

Rectangle {
    anchors.fill: parent

    Text {
        id: txtTitle
        color: "#3549a0"
        anchors.fill: parent
        text: qsTr("Usando archivos QML")
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
            spacing: 100
            Column {
                spacing: 20
                Text {
                    text: qsTr("Con: qmlviewer")
                    font.bold: true
                    font.pointSize: presenter.fontSize
                }
                Text {
                    text: qsTr("$ qmlviewer ejemplo01.qml")
                    font.pointSize: presenter.fontSize
                }
            }
            Column {
                spacing: 20
                Text {
                    text: qsTr("Con: python")
                    font.bold: true
                    font.pointSize: presenter.fontSize
                }
                Text {
                    text: qsTr("...\nview = QDeclarativeView()\nview.setSource(QUrl('ejemplo01.qml'))\n...\n\n$ python example01.py")
                    font.pointSize: presenter.fontSize
                }
            }
        }
    }
}
