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
        id: tempTimeArea
        width: parent.width
        height: (4 * parent.height) / 6
        anchors.left: hdrPageCamPre.left
        anchors.top: hdrPageCamPre.bottom
        color: "transparent"

        Rectangle {
            id: tempTimeMenu
            width: parent.width
            height: parent.height / 4
            anchors.left: tempTimeArea.left
            anchors.top: tempTimeArea.top
            color: "#4d4d4d"

            Button {
                id: tempMenuButton
                buttonWitdh: 200
                buttonHeight: parent.height
                textVisible: true
                textSource: "Temperature"
                txtSize: 24
                txtBold: true
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
            }
            Button {
                id: timerMenuButton
                buttonWitdh: 200
                buttonHeight: parent.height
                textVisible: true
                textSource: "Temperature"
                textColor: "#2eb82e"
                txtSize: 24
                txtBold: true
                anchors.left: tempMenuButton.right
                anchors.top: tempMenuButton.top
            }
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
        firstButtonText: "Next"
        z:3
    }
}
