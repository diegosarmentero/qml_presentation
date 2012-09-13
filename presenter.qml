import QtQuick 1.0

Item {
    id: presenter
    width: 740
    height: 740
    smooth: true

    property int angle1: 0;
    property int angle2: 180;
    property int fontSize: 32;
    property int curSlide: 1;
    property bool flipped: false;
    property int maxSlide: 17

    Loader{
        id: prevSlideLoader
        z:0
        opacity: 0
        NumberAnimation on opacity{id:fadePrevAnim; from:1; to:0; duration: 700}
        source: "slides/Slide" + curSlide + ".qml"
        anchors.fill: parent
    }
    Loader{
        id: nextSlideLoader
        z:2
        opacity: 0
        NumberAnimation on opacity {id:fadeNextAnim; from:0; to:1; duration: 700}
        source: "slides/Slide" + curSlide + ".qml"
        anchors.fill: parent
    }

    transform: Rotation {
        id: rotation
        origin.x: presenter.width/2
        origin.y: presenter.height/2
        axis.x: 0; axis.y: 1; axis.z: 0     // set axis.y to 1 to rotate around y-axis
        angle: angle1    // the default angle
    }

    states: State {
        name: "back"
        PropertyChanges { target: rotation; angle: angle2 }
        when: presenter.flipped
    }

    transitions: Transition {
        NumberAnimation { target: rotation; property: "angle"; duration: 700 }
    }

     focus: true
     Keys.onPressed:{ if(event.key == Qt.Key_Plus){fontSize += 1;}else if(event.key == Qt.Key_Minus){fontSize -= 1;}}
     Keys.onLeftPressed: {
         angle1 += 180;
         angle2 += 180;
         curSlide -= 1
         fadePrevAnim.running = true;
         presenter.flipped = !presenter.flipped;
         event.accepted = true;
     }
     Keys.onRightPressed: {
         angle1 += 180;
         angle2 += 180;
         curSlide += 1
         fadeNextAnim.running = true;
         presenter.flipped = !presenter.flipped;
         event.accepted = true;
     }

}
