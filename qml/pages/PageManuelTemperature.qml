import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4

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
            Rectangle {
                width: 200
                height: 4
                color: "#33ff33"
                anchors.left: parent.left
                anchors.top: parent.top
            }
            Button {
                id: tempMenuButton
                buttonWitdh: 200
                buttonHeight: parent.height
                textVisible: true
                textSource: "Temperature"
                textColor: "#33ff33"
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
                textSource: "Timer"
                txtSize: 24
                txtBold: true
                anchors.left: tempMenuButton.right
                anchors.top: tempMenuButton.top
            }
        }

        Rectangle {
            id: setTimeValue
            width: parent.width
            height: parent.height / 4
            anchors.left: tempTimeMenu.left
            anchors.top: tempTimeMenu.bottom
            color: "transparent"

            Text {
                id: txtTemp
                text: "425"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color: "#33ff33"
                font.pixelSize: 50
                font.bold: false
            }

            Text {
                id: txtSymbol
                text: "\xB0F"
                anchors.left: txtTemp.right
                anchors.top: txtTemp.top
                color: "red"
                font.pixelSize: 50
                font.bold: false
            }
        }
        Rectangle {
            id: setSlider
            width: parent.width
            height: (2*parent.height) / 4
            anchors.left: setTimeValue.left
            anchors.top: setTimeValue.bottom
            color: "transparent"

            SliderNew {
                anchors.verticalCenter: parent.verticalCenter
                z:2
            }

            TempBar {

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
