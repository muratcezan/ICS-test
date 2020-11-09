
// TODO: PAGECAMERA'dan devam et, FOOTER VE HEADER YUKLEN readonly kullanmayi unutma

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

    property bool ovenStatus        : dataInfo.ovenStatus
    property bool powerStatus       : false
    property bool lightStatus       : false
    property int tPosition          : 0
    property string startStopButtonText : "Start"

    DataInfo            {
        id: dataInfo
    }

    LeftBar             {
        id: mainLeftBar
        anchors.left: mainWind.left
        anchors.top: mainWind.top
        pStatus: powerStatus

        onOvenButtonClk: switchPages(pRunning)
        onCookBookBtnClk: switchPages(pCookBook)
        onMoreButtonClk: switchPages(pManuelBake)

        onPowerButtonClk: {
            if (powerStatus) {
                switchPages(pDefault);
                powerStatus=false;
            }
            else{
                powerStatus=true;
                switchPages(pRunning);
            }
        }
    }

    StackView           {
        id: viewer
        initialItem: pDefault
        width: 880
        height: 450
        anchors.left: mainLeftBar.right
        anchors.top: mainLeftBar.top
    }

    PageDefault         {
        id: pDefault
        currentTimeText: dataInfo.currentTime
        currentDateText: dataInfo.currentDate
        visible: false
    }

    PageCameraPreview   {
        id: pCameraPreview
        oStatus: ovenStatus
        pStatus: powerStatus
        lStatus: lightStatus
        cTime: dataInfo.currentTime
        footerProperties.operationalButtonText: startStopButtonText
        visible: false

        footerProperties.onOperationalButtonClk: startStopOven()

        footerProperties.onCameraButtonClk: switchPages(pRunning)
    }

    PageCookBook        {
        id: pCookBook
        oStatus: ovenStatus
        pStatus: powerStatus
        cTime: dataInfo.currentTime
        visible: false
        onCookButtonClk: {
            console.log("CookBook button clicked!");
        }
    }

    PageManuelBake      {
        id: pManuelBake
        oStatus: ovenStatus
        pStatus: powerStatus
        cTime: dataInfo.currentTime
        visible: false

        onManuelBakeButtonClk: {
            console.log("Manuel Bake button clicked!");
        }
    }

    PageRunning         {
        id: pRunning
        visible: false
        oStatus: ovenStatus
        pStatus: powerStatus
        cTime: dataInfo.currentTime
        temp: dataInfo.temp
        hrFirst: dataInfo.chronHrFirstDgt
        hrSecond: dataInfo.chronHrSecondDgt
        secFirst: dataInfo.chronScFirstDgt
        secSecond: dataInfo.chronScSecondDgt
        fProperties.operationalButtonText: startStopButtonText
        fProperties.onCameraButtonClk: switchPages(pCameraPreview)
        fProperties.onOperationalButtonClk: startStopOven();
    }

    PageManuelTimer     {
        id: pManuelTimer
        oStatus: ovenStatus
        pStatus: powerStatus
        cTime: dataInfo.currentTime
        hrFirst: dataInfo.chronHrFirstDgt
        hrSecond: dataInfo.chronHrSecondDgt
        secFirst: dataInfo.chronScFirstDgt
        secSecond: dataInfo.chronScSecondDgt
        visible: false
        tPos: tPosition

        onSwitchCursorClk: shiftCursor(index);
        onSwitchTempPageClk: switchPages(pManuelTemperature)
        fProperties.onOperationalButtonClk: switchPages(pRunning)
    }

    PageManuelTemperature {
        id: pManuelTemperature
        oStatus: ovenStatus
        pStatus: powerStatus
        cTime: dataInfo.currentTime
        tempText: dataInfo.temp
        visible: false

        sProperties.onValueChanged: dataInfo.setTemp(sProperties.value);

        onSwitchToTimerPageClk: switchPages(pManuelTimer)

        fProperties.onOperationalButtonClk: switchPages(pManuelTimer)
    }

    RightBar            {
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

        onSettingsButtonClk: switchPages(pManuelTemperature)
    }

    function switchPages(page) {
        if(powerStatus) {
            viewer.clear();
            if(page === pManuelTimer)
                tPosition=0;

            viewer.push(page, StackView.Immediate);
        }
    }

    function shiftCursor(v) {
        if(tPosition === 0){
            tPosition++;
            dataInfo.chronHrFirstDgt = v;
        }
        else if(tPosition === 1){
            dataInfo.chronHrSecondDgt = v;
            tPosition++;
        }
        else if(tPosition === 2){
            dataInfo.chronScFirstDgt = v
            tPosition++;
        }
        else{
            dataInfo.chronScSecondDgt = v;
            tPosition=0;
        }
    }

    function startStopOven(){
        if(dataInfo.ovenStatus){
            startStopButtonText = "Start";
            dataInfo.setOvenStatus(false);
        }
        else {
            startStopButtonText = "Stop";
            dataInfo.setOvenStatus(true);
        }
    }

}
