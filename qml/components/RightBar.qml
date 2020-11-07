// RightBar area
import QtQuick 2.0

Rectangle {
    // Bar properties
    property alias lightButtonMouse     : lightButtonMA
    property alias settingsButtonMouse  : settingsButtonMouseArea
    property bool lightOvenStatus       : false
    property int alarmValue             : 0

    // Oven power status
    property bool pStatus               : false

    // Button signals
    signal lightButtonClk()
    signal clockButtonClk()
    signal settingsButtonClk()

    id: rRightBar
    width: 360
    height: 450
    color: "#8c8c8c"
    border.width: 1
    border.color: "white"

    // Right big area
    Rectangle {
        width: 2*parent.width/3
        height: parent.height
        color: "transparent"
        anchors.right: parent.right
        anchors.top: parent.top

        // Wireless button
        Rectangle {
            id: wirelessArea
            width: parent.width
            height: parent.height/3
            anchors.top: parent.top
            anchors.right: parent.right
            color: "transparent"

            Button
            {
                id: wirelessButton
                buttonWitdh: parent.width
                buttonHeight: parent.width
                imgVisible: true
                imgSource: "qrc:/pics/wifi/wifi-line.png"
                textVisible: false
                anchors.centerIn: parent
                imgWidth: parent.width - 200
                imgHeight: parent.width - 200                
            }
        }

        // Bluetooth button
        Rectangle {
            id: bluetoothArea
            width: parent.width
            height: parent.height/3
            anchors.top: wirelessArea.bottom
            anchors.right: wirelessArea.right
            color: "transparent"

            Button
            {
                id: bluetoothButton
                buttonWitdh: parent.width
                buttonHeight: parent.width
                imgVisible: true
                imgSource: "qrc:/pics/bluetooth/bluetooth-off.png"
                textVisible: false
                anchors.centerIn: parent
                imgWidth: parent.width - 200
                imgHeight: parent.width - 200
            }
        }
    }

    // Left area
    Rectangle {
        width: parent.width/3
        height: parent.height
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top

        // Light icon
        Rectangle {
            id: leftFirstIcon
            width: parent.width
            height: parent.height/3
            anchors.top: parent.top
            anchors.left: parent.left
            color: "transparent"

            Button
            {
                id: lightButton
                buttonWitdh: parent.width
                buttonHeight: parent.width
                imgVisible: true
                imgSource: lightOvenStatus ? "qrc:/pics/light/lightbulb-on.png" : "qrc:/pics/light/lightbulb-off.png"
                textVisible: false
                anchors.centerIn: parent
                imgWidth: parent.width - 40
                imgHeight: parent.width - 40

                MouseArea{
                    id: lightButtonMA
                    anchors.fill: parent
                    onClicked: lightButtonClk()
                }
            }
        }

        // Clock icon
        Rectangle {
            id: leftSecondIcon
            width: parent.width
            height: parent.height/3
            anchors.top: leftFirstIcon.bottom
            anchors.left: leftFirstIcon.left
            color: "transparent"

            Button
            {
                id: clockButton
                buttonWitdh: parent.width
                buttonHeight: parent.width
                imgVisible: true
                imgSource: (((alarmValue < 5) && (alarmValue > 0)) && (pStatus)) ? "qrc:/pics/alarm/alarm-clock-rgb-line.png" :"qrc:/pics/alarm/alarm-clock-line.png"
                textVisible: false
                anchors.centerIn: parent
                imgWidth: parent.width - 40
                imgHeight: parent.width - 40

                MouseArea{
                    id:clockButtonMA
                    anchors.fill: parent
                    onClicked: clockButtonClk()
                }
            }
        }

        // Settings icon
        Rectangle {
            id: leftThirdIcon
            width: parent.width
            height: parent.height/3
            anchors.top: leftSecondIcon.bottom
            anchors.left: leftSecondIcon.left
            color: "transparent"

            Button
            {
                id: settingsButton
                buttonWitdh: parent.width
                buttonHeight: parent.width
                imgVisible: true
                imgSource: "qrc:/pics/settings/settings.png"
                textVisible: false
                anchors.centerIn: parent
                imgWidth: parent.width - 60
                imgHeight: parent.width - 60
                MouseArea {
                    id: settingsButtonMouseArea
                    anchors.fill: parent
                    onClicked: settingsButtonClk()
                }
            }
        }
    }
}
