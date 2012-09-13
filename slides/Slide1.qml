// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5
import QtQuick 1.1

Rectangle {
    id: slide01
    anchors.fill: parent

    Image {
        source: "../images/logo.png"
        scale: 0.3
        smooth: true
    }
    Image {
        anchors.right: parent.right
        source: "../images/qt-logo.jpg"
        scale: 0.3
        smooth: true
    }

    Text {
        id: txtTitle
        color: "#3549a0"
        anchors.fill: parent
        text: qsTr("Haciendo juegos e\ninterfaces copadas con QML")
        font.bold: true
        font.pointSize: presenter.fontSize * 2
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }

    Text {
        id: txt
        anchors.fill: parent
        text: qsTr("Diego Sarmentero (@diegosarmentero)")
        font.pointSize: presenter.fontSize
        verticalAlignment: Text.AlignBottom
        horizontalAlignment: Text.AlignHCenter
        anchors.bottomMargin: 70
    }
}
