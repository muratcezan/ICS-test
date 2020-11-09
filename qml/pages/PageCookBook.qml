import QtQuick 2.0
import QtQuick.Controls 2.12

import "../components"

Page {
    property string cTime               // Current time
    property bool oStatus: false        // Oven status
    property bool pStatus: false        // Power status

    // Button signal
    signal cookButtonClk()

    id: cookBook
    width: 880
    height: 450
//    color: "#333333"
    visible: pStatus ? true : false

    // Header
    Header
    {
        id: hPageCookBook
        hWidth: parent.width
        hHeight: parent.height / 6
        anchors.left: parent.left
        anchors.top: parent.top
        curTime: cTime
        ovStatus: oStatus
        z:3
    }

    // Cook button
    Button
    {
        id: cookButton
        buttonWitdh: 120
        buttonHeight: 40
        textVisible: true
        textSource: "Duck"
        rectRadius: 20
        rectColor: "#a6a6a6"
        rectBorderSize: 1
        anchors.top: hPageCookBook.bottom
        anchors.left: hPageCookBook.left
        anchors.leftMargin: 20
        anchors.topMargin: 20

        MouseArea {
            id: cookButtonMA
            anchors.fill: parent
            onClicked: cookButtonClk()
        }
    }

    // Footer
    Footer
    {
        id: fPageCookBook
        hWidth: parent.width
        hHeight: parent.height / 6
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        operationalButtonVisible: false
        cameraButtonVisible: false
        z:3
    }
}
