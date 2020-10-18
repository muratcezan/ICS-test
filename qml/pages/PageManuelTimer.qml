import QtQuick 2.0

import "../components"

Rectangle
{
    // Number buttons properties
    property int numBtnSize         :           60              // Number buttons size
    property int numBtnRadius       :           numBtnSize/2    // Number buttons radius
    property string numBtnColor     :           "#4d4d4d"       // Number buttons color
    property int numBtnTxtSize      :           30              // Number buttons text size
    property int numBtnMargin       :           10              // Number buttons margin
    property bool numBtnTxtVisible  :           true            // Number buttons text visible
    property int numBtnBorder       :           2               // Number buttons border size
    property bool numBtnTxtBold     :           true            // Number buttons text bold

    // Timer text properties
    property int txtSize            :           50              // Timer text size
    property string txtColor        :           "#33ff33"       // Timer text color
    property bool txtBold           :           true            // Timer text bold

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
                text: "H"
                color: txtColor
                font.pixelSize: txtSize
                font.bold: txtBold
                anchors.right: txtDot.left
                anchors.top: txtDot.top
            }
            Text {
                id: txtHrFirstItem
                text: "H"
                color: txtColor
                font.pixelSize: txtSize
                font.bold: txtBold
                anchors.right: txtHrSecondItem.left
                anchors.top: txtHrSecondItem.top
            }
            Text {
                id: txtScFirstItem
                text: "S"
                color: txtColor
                font.pixelSize: txtSize
                font.bold: txtBold
                anchors.left: txtDot.right
                anchors.top: txtDot.top
            }
            Text {
                id: txtScSecondItem
                text: "S"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                color: txtColor
                font.pixelSize: txtSize
                font.bold: txtBold
                anchors.left: txtScFirstItem.right
                anchors.top: txtScFirstItem.top
            }
        }

        Rectangle {
            id: numberListFisrt
            width: parent.width
            height: parent.height / 4
            anchors.left: setTimeValue.left
            anchors.top: setTimeValue.bottom
            color: "transparent"

            Button{
                id:numBtn3
                buttonWitdh: numBtnSize
                buttonHeight: numBtnSize
                textVisible: numBtnTxtVisible
                textSource: "3"
                rectRadius: numBtnRadius
                rectColor: numBtnColor
                txtSize: numBtnTxtSize
                txtBold: numBtnTxtBold
                rectBorderSize: numBtnBorder
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            Button{
                id: numBtn2
                buttonWitdh: numBtnSize
                buttonHeight: numBtnSize
                textVisible: numBtnTxtVisible
                textSource: "2"
                rectRadius: numBtnRadius
                rectColor: numBtnColor
                txtSize: numBtnTxtSize
                txtBold: numBtnTxtBold
                rectBorderSize: numBtnBorder
                anchors.right: numBtn3.left
                anchors.top: numBtn3.top
                anchors.rightMargin: numBtnMargin
            }
            Button{
                id: numBtn1
                buttonWitdh: numBtnSize
                buttonHeight: numBtnSize
                textVisible: numBtnTxtVisible
                textSource: "1"
                rectRadius: numBtnRadius
                rectColor: numBtnColor
                txtSize: numBtnTxtSize
                txtBold: numBtnTxtBold
                rectBorderSize: numBtnBorder
                anchors.right: numBtn2.left
                anchors.top: numBtn2.top
                anchors.rightMargin: numBtnMargin
            }
            Button{
                id: numBtn4
                buttonWitdh: numBtnSize
                buttonHeight: numBtnSize
                textVisible: numBtnTxtVisible
                textSource: "4"
                rectRadius: numBtnRadius
                rectColor: numBtnColor
                txtSize: numBtnTxtSize
                txtBold: numBtnTxtBold
                rectBorderSize: numBtnBorder
                anchors.left: numBtn3.right
                anchors.top: numBtn3.top
                anchors.leftMargin: numBtnMargin
            }
            Button{
                id: numBtn5
                buttonWitdh: numBtnSize
                buttonHeight: numBtnSize
                textVisible: numBtnTxtVisible
                textSource: "5"
                rectRadius: numBtnRadius
                rectColor: numBtnColor
                txtSize: numBtnTxtSize
                txtBold: numBtnTxtBold
                rectBorderSize: numBtnBorder
                anchors.left: numBtn4.right
                anchors.top: numBtn4.top
                anchors.leftMargin: numBtnMargin
            }
        }

        Rectangle {
            id: numberListSecond
            width: parent.width
            height: parent.height / 4
            anchors.left: numberListFisrt.left
            anchors.top: numberListFisrt.bottom
            color: "transparent"

            Button{
                id:numBtn8
                buttonWitdh: numBtnSize
                buttonHeight: numBtnSize
                textVisible: numBtnTxtVisible
                textSource: "8"
                rectRadius: numBtnRadius
                rectColor: numBtnColor
                txtSize: numBtnTxtSize
                txtBold: numBtnTxtBold
                rectBorderSize: numBtnBorder
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
            }
            Button{
                id: numBtn7
                buttonWitdh: numBtnSize
                buttonHeight: numBtnSize
                textVisible: numBtnTxtVisible
                textSource: "7"
                rectRadius: numBtnRadius
                rectColor: numBtnColor
                txtSize: numBtnTxtSize
                txtBold: numBtnTxtBold
                rectBorderSize: numBtnBorder
                anchors.right: numBtn8.left
                anchors.top: numBtn8.top
                anchors.rightMargin: numBtnMargin
            }
            Button{
                id: numBtn6
                buttonWitdh: numBtnSize
                buttonHeight: numBtnSize
                textVisible: numBtnTxtVisible
                textSource: "6"
                rectRadius: numBtnRadius
                rectColor: numBtnColor
                txtSize: numBtnTxtSize
                txtBold: numBtnTxtBold
                rectBorderSize: numBtnBorder
                anchors.right: numBtn7.left
                anchors.top: numBtn7.top
                anchors.rightMargin: numBtnMargin
            }
            Button{
                id: numBtn9
                buttonWitdh: numBtnSize
                buttonHeight: numBtnSize
                textVisible: numBtnTxtVisible
                textSource: "9"
                rectRadius: numBtnRadius
                rectColor: numBtnColor
                txtSize: numBtnTxtSize
                txtBold: numBtnTxtBold
                rectBorderSize: numBtnBorder
                anchors.left: numBtn8.right
                anchors.top: numBtn8.top
                anchors.leftMargin: numBtnMargin
            }
            Button{
                id: numBtn0
                buttonWitdh: numBtnSize
                buttonHeight: numBtnSize
                textVisible: numBtnTxtVisible
                textSource: "0"
                rectRadius: numBtnRadius
                rectColor: numBtnColor
                txtSize: numBtnTxtSize
                txtBold: numBtnTxtBold
                rectBorderSize: numBtnBorder
                anchors.left: numBtn9.right
                anchors.top: numBtn9.top
                anchors.leftMargin: numBtnMargin
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
