// Flexible Footer Component

import QtQuick 2.0

Rectangle
{
    // Footer Properties
    property int hWidth                         // Footer width
    property int hHeight                        // Footer height

    property int operationalButtonWidth               // First button width
    property int operationalButtonHeight              // First button height
    property bool operationalButtonVisible            // First button visible
    property string operationalButtonText             // First button text

    property int cameraButtonWidth               // Second button width
    property int cameraButtonHeight              // Second button height
    property bool cameraButtonVisible            // Second button visible

    signal operationalButtonClk()
    signal cameraButtonClk()

    id:footerRoot
    width: 880
    height: 75
    color: "#737373"

    // Operation button
    Button
    {
        id: operationalButton
        buttonWitdh: operationalButtonWidth
        buttonHeight: operationalButtonHeight
        imgVisible: false
        textVisible: true
        textSource: operationalButtonText
        rectRadius: 10
        rectColor: "#a6a6a6"
        rectBorderSize: 1
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 20
        visible: operationalButtonVisible

        MouseArea {
            id:operationalButtonArea
            anchors.fill: parent
            onClicked: operationalButtonClk()
        }
    }

    // Camera view button
    Button
    {
        id:cameraButton
        buttonHeight: cameraButtonHeight
        buttonWitdh: cameraButtonWidth
        imgVisible: true
        imgSource: "qrc:/pics/alarm/alarm-clock-rgb.png"
        rectRadius: 10
        rectColor: "#a6a6a6"
        rectBorderSize: 1
        imgWidth: 20
        imgHeight: 20
        anchors.top: operationalButton.top
        anchors.right: operationalButton.left
        anchors.rightMargin: 20
        visible: cameraButtonVisible

        MouseArea {
            id:cameraButtonArea
            anchors.fill: parent
            onClicked: cameraButtonClk()
        }
    }
}
