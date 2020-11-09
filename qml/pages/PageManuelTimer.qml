import QtQuick 2.0
import QtQuick.Controls 2.12

import "../components"

Page
{
    // Timer text properties
    readonly property int txtSize            : 50              // Timer text size
    readonly property string txtColor        : "#33ff33"       // Timer text color
    readonly property bool txtBold           : true            // Timer text bold

    // Time cursor position
    property int tPos                  : 0               // Timer position

    property alias hrFirst                    : txtHrFirstItem.text
    property int hrSecond                   : 0 // dInfo.chronHrSecondDgt
    property int secFirst                   : 0 // dInfo.chronScFirstDgt
    property int secSecond                  : 0 // dInfo.chronScSecondDgt

    property bool pStatus                   : false
    property bool oStatus                   : false
    property string cTime               // Current time

    property alias fProperties : footerProperties

    signal switchTempPageClk()
    signal switchCursorClk(int index)

    id:rManTimer
    width: 880
    height: 450
    visible: pStatus ? true : false

    // Header
    Header
    {
        id: hPageManTimer
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
        anchors.left: hPageManTimer.left
        anchors.top: hPageManTimer.bottom
        color: "#333333"

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
                anchors.horizontalCenter: timerMenuButton.horizontalCenter
                anchors.top: parent.top
            }
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
                MouseArea {
                    anchors.fill: parent
                    onClicked: switchTempPageClk()
                }
            }
            Button {
                id: timerMenuButton
                buttonWitdh: 200
                buttonHeight: parent.height
                textVisible: true
                textSource: "Timer"
                textColor: "#33ff33"
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
                id: txtDot
                text: ":"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color: txtColor
                font.pixelSize: txtSize
                font.bold: txtBold
            }
            Text {
                id: txtHrSecondItem
                text: hrSecond
                color: txtColor
                font.pixelSize: txtSize
                font.bold: txtBold
                anchors.right: txtDot.left
                anchors.top: txtDot.top
            }
            Text {
                id: txtHrFirstItem
                color: txtColor
                font.pixelSize: txtSize
                font.bold: txtBold
                anchors.right: txtHrSecondItem.left
                anchors.top: txtHrSecondItem.top
            }
            Text {
                id: txtScFirstItem
                text: secFirst
                color: txtColor
                font.pixelSize: txtSize
                font.bold: txtBold
                anchors.left: txtDot.right
                anchors.top: txtDot.top
            }
            Text {
                id: txtScSecondItem
                text: secSecond
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color: txtColor
                font.pixelSize: txtSize
                font.bold: txtBold
                anchors.left: txtScFirstItem.right
                anchors.top: txtScFirstItem.top
            }
            Rectangle {
                id: cursorRect
                width: txtHrFirstItem.width
                height: 3
                anchors.left: tPos == 0 ? txtHrFirstItem.left :  tPos == 1 ? txtHrSecondItem.left :  tPos == 2 ? txtScFirstItem.left :txtScSecondItem.left
                anchors.top: txtHrFirstItem.bottom
                color: txtColor
            }
        }

        Grid {
            id: grd
            anchors.top: setTimeValue.bottom
            anchors.horizontalCenter: setTimeValue.horizontalCenter
            anchors.topMargin: 10

            spacing: 10
            columns: 5
            rows: 2

            Repeater {
                model: 10

                Button{
                    id:numBtn3
                    buttonWitdh: 60
                    buttonHeight: 60
                    textVisible: true
                    textSource: index
                    rectRadius: 30
                    rectColor: "#4d4d4d"
                    txtSize: 30
                    txtBold: true
                    rectBorderSize: 2
                    visible: (tPos == 2) && ((index == 6)||(index == 7)||(index == 8)||(index==9)) ? false : true

                    MouseArea {
                        anchors.fill: parent
                        onClicked: switchCursorClk(index)

                    }
                }
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
