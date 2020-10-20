import QtQuick 2.12
import QtQuick.Window 2.12

import "components"
import "pages"

Window {
    width: 1600
    height: 450
    visible: true
    title: qsTr("Hello World")

    LeftBar
    {
        id: leftBar
    }

    PageDefault
    {
        anchors.left: leftBar.right
        anchors.top: leftBar.top
        z: dataInfo.PageDefaultZ
    }

    PageCameraPreview
    {
        anchors.left: leftBar.right
        anchors.top: leftBar.top
        z: dataInfo.PageCameraZ
    }

    PageCookBook
    {
        anchors.left: leftBar.right
        anchors.top: leftBar.top
        z: dataInfo.ManuelCookBookZ
    }

    PageManuelBake
    {
        anchors.left: leftBar.right
        anchors.top: leftBar.top
        z: dataInfo.ManuelBakeZ
    }

    PageRunning
    {
        anchors.left: leftBar.right
        anchors.top: leftBar.top
        z: dataInfo.PageRunningZ
    }

    PageManuelTimer
    {
        anchors.left: leftBar.right
        anchors.top:leftBar.top
        z: dataInfo.PageManuelTimerZ
    }

    PageManuelTemperature
    {
        anchors.left: leftBar.right
        anchors.top:leftBar.top
        z: dataInfo.PageManuelTempZ
    }

    RightBar
    {
        id: rightBar
    }
}
