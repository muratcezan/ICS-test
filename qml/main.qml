import QtQuick 2.12
import QtQuick.Window 2.12

import com.ics.datainfo 1.0

import "components"
import "pages"

Window {
    id: mainWind
    width: 1600
    height: 450
    visible: true
    title: qsTr("ICS-Test")
    color: "#333333"

    Loader {
        id: myLoader
        width: 880
        height: 450
        anchors.left: mainLeftBar.right
        anchors.top: mainLeftBar.top
        sourceComponent: mainDefault
    }

    DataInfo
    {
        id: dInfo
    }

    Api{
        id:api
    }

    LeftBar
    {
        id: mainLeftBar
        anchors.left: mainWind.left
        anchors.top: mainWind.top
    }

    PageDefault
    {
        id: mainDefault
    }

    PageCameraPreview
    {
        id:mainCamPre
    }

    PageCookBook
    {
        id: mainCookBook
    }

    PageManuelBake
    {
        id: mainManuelBake
    }

    PageRunning
    {
        id: mainRunning
    }

    PageManuelTimer
    {
        id: mainManTimer
    }

    PageManuelTemperature
    {
        id: mainManTemp
    }

    RightBar
    {
        id: mainRightBar
        anchors.left: myLoader.right
        anchors.top: myLoader.top
    }
}
