import QtQuick 2.0

import "../components"

Component
{
    id:cCamPre

    Rectangle
    {
        id:rCamPre
        width: api.pageWidth
        height: api.mainHeight
        color: "#333333"
        visible: api.ovenPower ? true : false

        Header
        {
            id: hPageCamPre
            hWidth: parent.width
            hHeight: parent.height / 6
            anchors.left: parent.left
            anchors.top: parent.top
            z:3
        }

        Rectangle
        {
            id: opaCam
            width: parent.width
            height: ( 4 * parent.height)/6
            anchors.left: hdrPageCamPre.left
            anchors.top: hdrPageCamPre.bottom
            color: "black"
            opacity: api.lightOven ? 0.8 : 1.0
            z:2
        }

        Image
        {
            id: imgPreview
            source: "qrc:/pics/other/duck.png"
            width: 800
            height: 300
            anchors.centerIn: parent
            z:1
        }

        Footer
        {
            id: fPageCamPre
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
