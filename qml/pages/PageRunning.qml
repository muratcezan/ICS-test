import QtQuick 2.0

import "../components"

Rectangle
{
    width: 880
    height: parent.height
    color: "#333333"

    Header
    {
        id: hdrPageCamPre
        hWidth: parent.width
        hHeight: parent.height / 6
        anchors.left: parent.left
        anchors.top: parent.top
        z:3
    }

    Rectangle
    {
        width: parent.width
        height: ( 4 * parent.height)/6
        anchors.left: hdrPageCamPre.left
        anchors.top: hdrPageCamPre.bottom
        color: "transparent"

        Text {
            id: tempText
            text: "425 F"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 30
            anchors.bottomMargin: 120
            font.pixelSize: 18
            color:"white"
        }
        Text {
            id: timerText
            text: "01:30"
            anchors.right: parent.right
            anchors.bottom: tempText.bottom
            anchors.rightMargin: 30
            font.pixelSize: 40
            color:"white"
            font.bold: true
        }
    }



    Footer
    {
        id: footerPageCamPre
        hWidth: parent.width
        hHeight: parent.height / 6
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        firstButtonWidth: 100
        firstButtonHeight: 30
        firstButtonVisible: true
        firstButtonText: "Cancel"
        secondButtonWidth: 30
        secondButtonHeight: 30
        secondButtonVisible: true
        z:3
    }
}
