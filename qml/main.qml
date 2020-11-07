import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

import com.ics.datainfo 1.0

import "components"
import "pages"

ApplicationWindow {
    visible: true
    id: mainWind
    width: 1600
    height: 450
    title: qsTr("ICS-Test")
    color: "#333333"

    property bool ovenStatus        : false
    property bool powerStatus       : false
    property bool lightStatus       : false

    DataInfo    {
        id: dataInfo
    }
    LeftBar     {
        id: mainLeftBar
        anchors.left: mainWind.left
        anchors.top: mainWind.top
        pStatus: powerStatus

        onPowerButtonClk: {
            if (powerStatus)
                powerStatus=false;
            else
                powerStatus=true;
            console.log("BUTONA BASILDI" + powerStatus);
        }

        onOvenButtonClk:  {
            console.log("OVEN BUTTON CLICKED");
        }

        onCookBookBtnClk: {
            console.log("COOKBOOK BUTTON CLICKED");
        }

        onMoreButtonClk: {
            console.log("MORE BUTTON CLICKED");
        }
    }

    StackView   {
        id: viewer
        initialItem: p1
        width: 880
        height: 450
        anchors.left: mainLeftBar.right
        anchors.top: mainLeftBar.top

    }
    PageDefault {
        title: qsTr("Home")
        id: p1
        currentTimeText: dataInfo.currentTime
        currentDateText: dataInfo.currentDate
        rectColor: "gray"
        visible: false
    }


    RightBar
    {
        id: mainRightBar
        anchors.left: viewer.right
        anchors.top: viewer.top
        pStatus: powerStatus
        lightOvenStatus: lightStatus

        onLightButtonClk: {
            console.log("Light button clicked");
            if(powerStatus) {
                if(lightStatus)
                    lightStatus = false;
                else
                    lightStatus = true;
            }
        }

        onClockButtonClk: {
            console.log("Clock Button Clicked");
        }

        onSettingsButtonClk: {
            console.log("Settings Button Clicked");
            if(powerStatus) {
                if(!ovenStatus)
                    console.log("Temperature page load");
            }
        }
    }

//    Rectangle {
//        width: 100
//        height: 100
//        color: "blue"
//        anchors.right: parent.right
//        anchors.bottom: parent.bottom
//        MouseArea {
//            anchors.fill: parent
//            onClicked: {
////                viewer.contentItem = p2;
//                console.log("tiklandi" + viewer.index);
//                if (viewer.currentItem == p1)
//                {
//                    console.log("BIRDESIN");
//                    viewer.push(p2, StackView.Immediate);
//                }
//                else{
//                    console.log("IKIDESIN");
//                    viewer.pop(p1,StackView.Immediate);
////                    viewer.push(p1);
//                }
//            }
//        }
//    }
}

//Window {



////    PageCameraPreview
////    {
////        id:mainCamPre
////    }

////    PageCookBook
////    {
////        id: mainCookBook
////    }

////    PageManuelBake
////    {
////        id: mainManuelBake
////    }

////    PageRunning
////    {
////        id: mainRunning
////    }

//    PageManuelTimer
//    {
//        id: mainManTimer
//    }

////    PageManuelTemperature
////    {
////        id: mainManTemp
////    }

//}
