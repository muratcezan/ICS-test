import QtQuick 2.0

Rectangle
{
    property int hWidth     // Header width
    property int hHeight    // Header height
    // Oven status
    property bool ovStatus      : false
    property string curTime

    width: hWidth
    height: hHeight
    color: "#737373"

    // Status text
    Text {
        id: statusText
        text: (ovStatus == true) ? "Running" : "Ready"
        color: "white"
        font.pixelSize: 30
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 20
    }

    // Time text
    Text {
        id: statusTime
        text: curTime
        color: "white"
        font.pixelSize: 30
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        anchors.rightMargin: 20
    }
}
