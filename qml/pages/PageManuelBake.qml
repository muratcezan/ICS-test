import QtQuick 2.0
import QtQuick.Controls 2.12

import "../components"

Page
{
    property string cTime               // Current time
    property bool oStatus: false        // Oven status
    property bool pStatus: false        // Power status

    signal manuelBakeButtonClk()

    id: manuelBake
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
        ovStatus: ovStatus
        z:3
    }

    // Manuel Bake button
    Button
    {
        id: manuelBakeButton
        buttonWitdh: 120
        buttonHeight: 120
        textVisible: true
        textSource: "Text"
        rectRadius: 20
        rectColor: "#a6a6a6"
        rectBorderSize: 1
        anchors.top: hPageCookBook.bottom
        anchors.left: hPageCookBook.left
        anchors.leftMargin: 20
        anchors.topMargin: 20

        MouseArea {
            anchors.fill: parent
            onClicked: manuelBakeButtonClk()
        }
    }

    // Footer
    Footer
    {
        id: fPageManBake
        hWidth: parent.width
        hHeight: parent.height / 6
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        operationalButtonVisible: false
        cameraButtonVisible: false
        z:3
    }
}
