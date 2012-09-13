// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: slide02
    anchors.fill: parent

    Text {
        id: txtTitle
        color: "#3549a0"
        anchors.fill: parent
        text: qsTr("Que es QML?")
        font.bold: true
        font.pointSize: presenter.fontSize * 2
        verticalAlignment: Text.AlignTop
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: 30
    }

    Text {
        id: txtBody
        anchors.fill: parent
        text: qsTr("QML (Qt Meta Language o Qt Modeling Language) es un lenguaje declarativo basado en JavaScript, para el diseño de aplicaciones centradas en la UI. Es parte de Qt Quick, el kit de desarrollo de UI contenido en el framework de Qt.")
        wrapMode: Text.WordWrap
        font.bold: true
        font.pointSize: presenter.fontSize
        horizontalAlignment: Text.AlignHCenter
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.topMargin: presenter.fontSize * 6
    }

    Rectangle {
        width: 200
        height: 200
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 100
        color: "blue"
        radius: 10.0
    }

    Text {
        id: txtCode
        anchors.fill: parent
        text: qsTr("Rectangle {\n\twidth: 200\n\theight: 200\n\tcolor: \"blue\"\n\tradius: 10.0\n}")
        font.pointSize: presenter.fontSize / 2
        verticalAlignment: Text.AlignBottom
        anchors.leftMargin: parent.width / 2
        anchors.bottomMargin: 100
    }

    //Publicidad de ninja :P
    Rectangle {
        id: publicity
        x: 150
        y: parent.height + 50

        Image {
            id: image
            source: "../images/publicidad.png"
            anchors.margins: 10
        }
        Rectangle { // rounded corners for img
            anchors.fill: image
            color: "transparent"
            border.color: "black"
            border.width: 4
            radius: 10.0
        }
    }

    MouseArea {
         anchors.fill: parent
         onClicked: PropertyAnimation { target: publicity; property: "y"; from: parent.height + 50; to: -600; duration: 5000; easing.type: Easing.OutInQuad }
     }
}
