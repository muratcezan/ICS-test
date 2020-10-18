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

    Button
    {
        id: cookItem
        buttonWitdh: 120
        buttonHeight: 40
        textVisible: true
        textSource: "Duck"
        rectRadius: 20
        rectColor: "#a6a6a6"
        rectBorderSize: 1
        anchors.top: hdrPageCamPre.bottom
        anchors.left: hdrPageCamPre.left
        anchors.leftMargin: 20
        anchors.topMargin: 20
    }

    Footer
    {
        id: footerPageCamPre
        hWidth: parent.width
        hHeight: parent.height / 6
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        firstButtonVisible: false
        secondButtonVisible: false
        z:3
    }
}