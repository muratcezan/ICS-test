import QtQuick 2.12
import QtQuick.Window 2.12

import "components"
import "pages"

Window {
    width: 1600
    height: 450
    visible: true
    title: qsTr("Hello World")

    Loader {
        id: myLoader
        width: 880
        height: 450
        anchors.left: leftBar.right
        anchors.top: leftBar.top
        sourceComponent: pDefault
    }

    LeftBar
    {
        id: leftBar
    }

    PageDefault
    {
        id: pDefault
    }

    PageCameraPreview
    {
        id:pCamPre
    }

    PageCookBook
    {
        id: pCook
    }

    PageManuelBake
    {
        id: pManuelBake
    }

    PageRunning
    {
        id: pRunning
    }

    PageManuelTimer
    {
        id: pManTimer
    }

    PageManuelTemperature
    {
        id: pManTemp
    }

    RightBar
    {
        id: rightBar
    }
}
