import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4

import "../components"
Component
{
    Rectangle
    {
        width: api.pagesWidth
        height: parent.height
        color: "#333333"
        visible: api.ovenPower ? true : false

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

            ProgressBar
            {
                value:api.progressBarValue
                anchors.top: tempText.bottom
                anchors.left: tempText.left
                anchors.topMargin: 40
                width: api.progressBarWidth
            }

            Text {
                id: tempText
                text: api.temperature + "\xB0F"
                anchors.left: parent.left
                anchors.bottom: parent.bottom
                anchors.leftMargin: 30
                anchors.bottomMargin: 120
                font.pixelSize: 18
                color:"white"
            }
            Text {
                id: timerText
                text: api.chronoHrFirstDigit + api.chronoHrSecondDigit + ":" + api.chronoMnFirstDigit + api.chronoMnSecondDigit
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
            firstButtonText: (dInfo.ovenStatus == true) ? "STOP" : "START"
            secondButtonWidth: 30
            secondButtonHeight: 30
            secondButtonVisible: true
            z:3
        }
    }
}
