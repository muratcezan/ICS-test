import QtQuick 2.0

Rectangle {
    property int value: triange.x

    id: mySlider
    height: 20
    radius: 10
    smooth: true
    color:"transparent"
    anchors {
        left: parent.left
        right: parent.right
        top:parent.top
        leftMargin: 20
        rightMargin: 20
    }

    Image {
        id: triange
        source: "qrc:/pics/other/triangle.png"
        width: 30
        height: 30
        x:dInfo.triPos; y:1

        MouseArea {
            anchors.fill: parent
            drag.target: parent
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.maximumX: parent.parent.width - 30
            onPositionChanged: {
                dInfo.setTemp(triange.x.toString());
            }
        }
    }
}
