import QtQuick 2.0

Rectangle
{
    width: 880
    height: parent.height
    color:"#333333"

    Rectangle {
        id: dPageFirstItem
        width: parent.width
        height: ( 3 * parent.height ) / 5
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top

        Text {
            id: dPageFirstItemText
            text: "11:15 AM"
            color: "white"
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 120
            font.bold: true
        }
    }

    Rectangle {
        id: dPageSeondItem
        width: parent.width
        height: ( 2 * parent.height ) / 5
        color: "transparent"
        anchors.left: dPageFirstItem.left
        anchors.top: dPageFirstItem.bottom

        Text {
            id: dPageSecondItemText
            text: "Monday, June 18"
            color: "white"
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 40
        }
    }
}
