// LeftBar area
import QtQuick 2.0

Rectangle{
    id: lComp
    width: 360
    height: parent.height
    anchors.left: parent.left
    anchors.top: parent.top
    color: "gray"

    // Left big area
    Rectangle {
        width: 2*parent.width/3
        height: parent.height
        color: "transparent"
        anchors.left: parent.left
        anchors.top: parent.top

        // Power button
        Button {
            id: powerBtn
            buttonWitdh: parent.width / 2
            imgVisible: true
            imgSource: "qrc:/pics/power/power-off.png"
            textVisible: false
            anchors.centerIn: parent
            imgWidth: parent.width / 2
            imgHeight: parent.width / 2
        }
    }

    // Right area
    Rectangle {
        width: parent.width/3
        height: parent.height
        color: "transparent"
        anchors.right: parent.right
        anchors.top: parent.top

        // Oven Button
        Rectangle {
            id: leftFirstIcon
            width: parent.width
            height: parent.height/3
            anchors.top: parent.top
            anchors.left: parent.left
            color: "transparent"

            Button
            {
                buttonWitdh: parent.width
                imgVisible: true
                imgSource: "qrc:/pics/oven/oven-line.png"
                textVisible: false
                anchors.centerIn: parent
                imgWidth: parent.width - 30
                imgHeight: parent.width - 30
            }
        }

        // Menu Button
        Rectangle {
            id: leftSecondIcon
            width: parent.width
            height: parent.height/3
            anchors.top: leftFirstIcon.bottom
            anchors.left: leftFirstIcon.left
            color: "transparent"

            Button
            {
                buttonWitdh: parent.width
                imgVisible: true
                imgSource: "qrc:/pics/menu/menu.png"
                textVisible: false
                anchors.centerIn: parent
                imgWidth: parent.width - 40
                imgHeight: parent.width - 40
            }
        }

        // More Button
        Rectangle {
            id: leftThirdIcon
            width: parent.width
            height: parent.height/3
            anchors.top: leftSecondIcon.bottom
            anchors.left: leftSecondIcon.left
            color: "transparent"

            Button
            {
                buttonWitdh: parent.width
                imgVisible: true
                imgSource: "qrc:/pics/more/more.png"
                textVisible: false
                anchors.centerIn: parent
                imgWidth: parent.width - 50
                imgHeight: parent.width - 50
            }
        }
    }
}
