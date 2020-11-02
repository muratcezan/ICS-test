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
        powerButtonClicked.onClicked: {
            // Start the Oven
            if(api.ovenPower)
                api.ovenPower = false;
            else
                api.ovenPower = true;
        }

        ovenButtonClicked.onClicked: {
            if(api.ovenPower)
                myLoader.sourceComponent = mainRunning
        }

        ovenButtonClicked.onPressed: btnOvenAlias.imgSource= "qrc:/pics/oven/oven-rgb-line.png"

        ovenButtonClicked.onReleased: btnOvenAlias.imgSource= "qrc:/pics/oven/oven-line.png"

        cookBookBtnClicked.onClicked: {
            if(api.ovenPower)
                myLoader.sourceComponent = mainCookBook
        }

        cookBookBtnClicked.onPressed: cookBookBtnAlias.imgSource = "qrc:/pics/menu/menu-rgb.png";
        cookBookBtnClicked.onReleased: cookBookBtnAlias.imgSource = "qrc:/pics/menu/menu.png";

        moreButtonMouse.onClicked: {
            if(api.ovenPower)
                myLoader.sourceComponent = mainManuelBake
        }

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
        lightButtonMouse.onClicked: {
            if(api.ovenPower){
                if(api.lightOven)
                    api.lightOven = false
                else
                    api.lightOven = true
            }
        }
        settingsButtonMouse.onClicked: {
            if(api.ovenPower)
            {
                if(api.ovenStatus)
                    myLoader.sourceComponent = mainRunning;
                else
                    myLoader.sourceComponent = mainManTemp;
            }
        }

    }
}
