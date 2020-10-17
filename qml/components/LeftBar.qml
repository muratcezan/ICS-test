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
        }
    }

    // Right area
    Rectangle {
        width: parent.width/3
        height: parent.height
        color: "transparent"
        anchors.right: parent.right
        anchors.top: parent.top

        // Oven icon
        Rectangle {
            id: leftFirstIcon
            width: parent.width
            height: parent.height/3
            anchors.top: parent.top
            anchors.left: parent.left
            color: "transparent"

            Image {
                id: ovenIcon
                source: "qrc:/pics/oven/oven-line.png"
                width: 110
                height: 110
                anchors.centerIn: parent

            }
        }

        // Menu icon
        Rectangle {
            id: leftSecondIcon
            width: parent.width
            height: parent.height/3
            anchors.top: leftFirstIcon.bottom
            anchors.left: leftFirstIcon.left
            color: "transparent"

            Image {
                id: menuIcon
                source: "qrc:/pics/menu/menu.png"
                width: 90
                height: 90
                anchors.centerIn: parent
            }
        }

        // More icon
        Rectangle {
            id: leftThirdIcon
            width: parent.width
            height: parent.height/3
            anchors.top: leftSecondIcon.bottom
            anchors.left: leftSecondIcon.left
            color: "transparent"

            Image {
                id: moreIcon
                source: "qrc:/pics/more/more.png"
                width: 90
                height: 90
                anchors.centerIn: parent
            }
        }
    }
}
