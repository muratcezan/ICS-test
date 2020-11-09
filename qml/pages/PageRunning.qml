import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4

import "../components"

Page
{
    property alias fProperties      : footerProperties
    property bool pStatus           : false
    property bool oStatus           : false
    property string temp
    property string cTime               // Current time
    property double progressValue   : 0.0

    property string hrFirst         : "0"
    property string hrSecond        : "0"
    property string secFirst        : "0"
    property string secSecond       : "0"

    id: pageRun
    width: 880
    height: 450
    visible: pStatus ? true : false

    Header
    {
        id: hPageRunning
        hWidth: parent.width
        hHeight: parent.height / 6
        anchors.left: parent.left
        anchors.top: parent.top
        curTime: cTime
        ovStatus: oStatus
        z:3
    }

    Rectangle
    {
        width: parent.width
        height: ( 4 * parent.height)/6
        anchors.left: hPageRunning.left
        anchors.top: hPageRunning.bottom
        color: "#333333" //"transparent"

        // Progresbar values
        ProgressBar {
            value:progressValue//api.progressBarValue
            anchors.top: tempText.bottom
            anchors.left: tempText.left
            anchors.topMargin: 40
            width: ((13 * pageRun.width) / 14)
        }

        Text {
            id: tempText
            text: temp + "\xB0F"
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 30
            anchors.bottomMargin: 120
            font.pixelSize: 18
            color:"white"
        }
        Text {
            id: timerText
            text: hrFirst + hrSecond + ":" + secFirst + secSecond
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
        id: footerProperties
        hWidth: parent.width
        hHeight: parent.height / 6
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        operationalButtonWidth: 100
        operationalButtonHeight: 30
        operationalButtonVisible: true
        operationalButtonText: (oStatus == true) ? "STOP" : "START"
        cameraButtonWidth: 30
        cameraButtonHeight: 30
        cameraButtonVisible: true
        z:3
    }
}
