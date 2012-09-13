import Qt 4.7

Item{
    property int space: 20
    property string text: "Lorem Ipsum"
    width: textItem.width + space
    height: childrenRect.height
    Image {
        x: space - 20
        width: 20;
        height: 20;
        anchors.verticalCenter: textItem.verticalCenter;
        source: "../images/green-diamond.png"
    }
    Text {
        id: textItem
        x: space
        color: "Black"
        text: parent.text
        font.pointSize: presenter.fontSize
    }
}
