// Flexible Footer Component

import QtQuick 2.0

Rectangle
{
    // Footer Properties
    property int hWidth                         // Footer width
    property int hHeight                        // Footer height

    property int firstButtonWidth               // First button width
    property int firstButtonHeight              // First button height
    property bool firstButtonVisible            // First button visible
    property string firstButtonText             // First button text

    property int secondButtonWidth               // Second button width
    property int secondButtonHeight              // Second button height
    property bool secondButtonVisible            // Second button visible

    width: hWidth
    height: hHeight
    color: "#737373"

    // Operation button
    Button
    {
        id: firstButton
        buttonWitdh: firstButtonWidth
        buttonHeight: firstButtonHeight
        imgVisible: false
        textVisible: true
        textSource: firstButtonText
        rectRadius: 10
        rectColor: "#a6a6a6"
        rectBorderSize: 1
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 20
        visible: firstButtonVisible
    }

    // Image button
    Button
    {
        id:secondButton
        buttonHeight: secondButtonHeight
        buttonWitdh: secondButtonWidth
        imgVisible: true
        imgSource: "qrc:/pics/alarm/alarm-clock-rgb.png"
        rectRadius: 10
        rectColor: "#a6a6a6"
        rectBorderSize: 1
        imgWidth: 20
        imgHeight: 20
        anchors.top: firstButton.top
        anchors.right: firstButton.left
        anchors.rightMargin: 20
        visible: secondButtonVisible
    }
}