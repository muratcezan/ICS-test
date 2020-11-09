import QtQuick 2.0
import QtQuick.Controls 2.12

import "../components"

Page {
    // Page camera properties
    property bool oStatus   : false                 // Oven status
    property bool pStatus   : false                 // Power status
    property bool lStatus   : false                 // Light status

    property alias footerProperties: fPageCamPre    // Footer properties
    property string cTime                           // Current time

    id:rCamPre
    width: 880
    height: 450
    visible: pStatus ? true : false

    // Header
    Header
    {
        id: hPageCamPre
        hWidth: parent.width
        hHeight: parent.height / 6
        anchors.left: parent.left
        anchors.top: parent.top
        curTime: cTime
        ovStatus: oStatus
        z:3
    }

    // Light area
    Rectangle
    {
        id: opaCam
        width: parent.width
        height: ( 4 * parent.height)/6
        anchors.left: hPageCamPre.left
        anchors.top: hPageCamPre.bottom
        color: "black"
        opacity: lStatus ? 0.8 : 1.0
        z:2
    }

    // Camera review :)
    Image
    {
        id: imgPreview
        source: "qrc:/pics/other/duck.png"
        width: 800
        height: 300
        anchors.centerIn: parent
        z:1
    }

    // Footer
    Footer
    {
        id: fPageCamPre
        hWidth: parent.width
        hHeight: parent.height / 6
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        operationalButtonWidth: 100
        operationalButtonHeight: 30
        operationalButtonVisible: true
        operationalButtonText: (oStatus == true) ? "STOP" : "START"
        cameraButtonWidth: 30
        cameraButtonHeight: 30
        cameraButtonVisible: true
        z:3
    }
}
