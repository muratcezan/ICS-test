import QtQuick 2.0

import "../components"
Component{
    Rectangle
    {
        width: 880
        height: parent.height
        color: "#333333"
        visible: api.ovenPower ? true : false

        Header
        {
            id: hPageManBake
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
            buttonHeight: 120
            textVisible: true
            textSource: "Text"
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
            id: fPageManBake
            hWidth: parent.width
            hHeight: parent.height / 6
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            firstButtonVisible: false
            secondButtonVisible: false
            z:3
        }
    }
}
