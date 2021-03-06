import QtQuick 2.0
import QtQuick.Controls 2.14

import "../components"

Page
{
    property string cTime               // Current time
    property bool oStatus: false        // Oven status
    property bool pStatus: false        // Power status

    property alias fProperties      : footerProperties
    property alias sProperties      : sliderProperties
    property int tempText           : txtTemp.text

    signal switchToTimerPageClk()

    id: rManTemp
    width: 880
    height: 450

    // Header
    Header
    {
        id: hPageManTemp
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
        id: tempTimeArea
        width: parent.width
        height: (4 * parent.height) / 6
        anchors.left: hPageManTemp.left
        anchors.top: hPageManTemp.bottom
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

                MouseArea {
                    anchors.fill: parent
                    onClicked: switchToTimerPageClk()
                }
            }
        }
        Rectangle {
            id: setTimeValue
            width: parent.width
            height: parent.height / 4
            anchors.left: tempTimeMenu.left
            anchors.top: tempTimeMenu.bottom
            color: "#333333"

            Text {
                id: txtTemp
                text: tempText
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
            height: parent.height / 2
            anchors.left: setTimeValue.left
            anchors.top: setTimeValue.bottom
            color: "#333333"

            SliderNew {
                id: sliderProperties
                anchors.left: pBar.left
                anchors.right: pBar.right
                anchors.leftMargin: -20
                anchors.rightMargin: -20
                anchors.top:setSlider.top
                anchors.topMargin: -15
                z:2
            }

            Image {
                id: pBar
                source: "qrc:/pics/other/bar.png"
                anchors.horizontalCenter: parent.horizontalCenter
            }
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
        operationalButtonText: "Next"
        z:3
    }
}
