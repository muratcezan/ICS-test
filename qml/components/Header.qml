import QtQuick 2.0

Rectangle
{
    property int hWidth
    property int hHeight
    width: hWidth
    height: hHeight
    color: "#737373"

    Text {
        id: statusText
        text: "Status text"
        color: "white"
        font.pixelSize: 30
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 20
    }

    Text {
        id: statusTime
        text: "11:15 AM"
        color: "white"
        font.pixelSize: 30
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 20
    }

}
