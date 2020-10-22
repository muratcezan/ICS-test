import QtQuick 2.0

import "../components"

Component
{
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
            color: "black"
            opacity: 0.8
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
}
