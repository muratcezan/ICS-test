// LeftBar area
import QtQuick 2.0

Rectangle{
    id: lRightBar
    width: api.barWidth
    height: api.mainHeight
    color: "#8c8c8c"
    border.width: 1
    border.color: "white"

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
            buttonHeight: parent.width / 2
            imgVisible: true
            imgSource: api.ovenPower ? "qrc:/pics/power/power-on.png": "qrc:/pics/power/power-off.png"
            textVisible: false
            anchors.centerIn: parent
            imgWidth: parent.width / 2
            imgHeight: parent.width / 2

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    // Start the Oven
                    if(api.ovenPower)
                        api.ovenPower = false;
                    else
                        api.ovenPower = true;
                }
            }
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
                id: btnOven
                buttonWitdh: parent.width
                buttonHeight: parent.width
                imgVisible: true
                imgSource: "qrc:/pics/oven/oven-line.png"
                textVisible: false
                anchors.centerIn: parent
                imgWidth: parent.width - 30
                imgHeight: parent.width - 30

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if(api.ovenPower)
                            myLoader.sourceComponent = mainRunning
                    }

                    onPressed: {
                        btnOven.imgSource= "qrc:/pics/oven/oven-rgb-line.png"
                    }

                    onReleased: {
                        btnOven.imgSource= "qrc:/pics/oven/oven-line.png"
                    }
                }
            }
        }

        // CookBook Button
        Rectangle {
            id: leftSecondIcon
            width: parent.width
            height: parent.height/3
            anchors.top: leftFirstIcon.bottom
            anchors.left: leftFirstIcon.left
            color: "transparent"

            Button
            {
                id: cookBookBtn
                buttonWitdh: parent.width
                buttonHeight: parent.width
                imgVisible: true
                imgSource: "qrc:/pics/menu/menu.png"
                textVisible: false
                anchors.centerIn: parent
                imgWidth: parent.width - 40
                imgHeight: parent.width - 40

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if(api.ovenPower)
                            myLoader.sourceComponent = mainCookBook
                    }

                    onPressed: cookBookBtn.imgSource = "qrc:/pics/menu/menu-rgb.png";
                    onReleased: cookBookBtn.imgSource = "qrc:/pics/menu/menu.png";
                }
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
                buttonHeight: parent.width
                imgVisible: true
                imgSource: "qrc:/pics/more/more.png"
                textVisible: false
                anchors.centerIn: parent
                imgWidth: parent.width - 50
                imgHeight: parent.width - 50
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        if(api.ovenPower)
                            myLoader.sourceComponent = mainManuelBake
                    }
                }
            }
        }
    }
}
