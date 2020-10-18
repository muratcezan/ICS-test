// RightBar area
import QtQuick 2.0

Rectangle {
    id: rComp
    width: 360
    height: parent.height
    anchors.right: parent.right
    anchors.top: parent.top
    color: "gray"

    // Right big area
    Rectangle {
        width: 2*parent.width/3
        height: parent.height
        color: "transparent"
        anchors.right: parent.right
        anchors.top: parent.top

        // Power button
        Rectangle {
            id: wirelessArea
            width: parent.width
            height: parent.height/3
            anchors.top: parent.top
            anchors.right: parent.right
            color: "transparent"

            Image {
                id: wifiIcon
                source: "qrc:/pics/wifi/wifi-line.png"
                width: 50
                height: 50
                anchors.centerIn: parent
            }
        }
        Rectangle {
            id: bluetoothArea
            width: parent.width
            height: parent.height/3

            anchors.top: wirelessArea.bottom
            anchors.right: wirelessArea.right
            color: "transparent"

            Image {
                id: bluetoothIcon
                source: "qrc:/pics/bluetooth/bluetooth-off.png"
                width: 50
                height: 50
                anchors.centerIn: parent
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

            Image {
                id: lightIcon
                source: "qrc:/pics/light/lightbulb-off.png"
                width: 90
                height: 90
                anchors.centerIn: parent
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

            Image {
                id: alarmIcon
                source: "qrc:/pics/alarm/alarm-clock-line.png"
                width: 90
                height: 90
                anchors.centerIn: parent
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

            Image {
                id: settingsIcon
                source: "qrc:/pics/settings/settings.png"
                width: 90
                height: 90
                anchors.centerIn: parent
            }
        }
    }
}
