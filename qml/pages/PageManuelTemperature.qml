import QtQuick 2.0
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4

import "../components"

Component
{
    id: cManTemp

    Rectangle
    {
        id: rManTemp
        width: api.pageWidth
        height: api.mainHeight
        color: "#333333"
        visible: api.ovenPower ? true : false
        Header
        {
            id: hPageManTemp
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

                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            myLoader.sourceComponent = mainManTimer
//                            dataUpdate.valueChanged("swicth","manuel-temp,manuel-timer");
                        }
                    }
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
                    text: dInfo.temp
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
                color: "transparent"

                SliderNew {
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
//                    anchors.topMargin: -100
                }
            }
        }
        Footer
        {
            id: fPageManTemp
            hWidth: parent.width
            hHeight: parent.height / 6
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            firstButtonWidth: 100
            firstButtonHeight: 30
            firstButtonVisible: true
            firstButtonText: "Next"
            z:3

            MouseArea {
                anchors.fill: parent
                onClicked: {
                        myLoader.sourceComponent = mainManTimer
                }
            }
        }
    }
}
