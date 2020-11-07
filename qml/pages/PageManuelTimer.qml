import QtQuick 2.0

import "../components"

Item
{
    id: cManTimer

    Rectangle {
        width: 880
        height: 450
        color: "transparent"

        Text {
            id: name
            text: qsTr("text")
        }
    }



//    Rectangle
//    {
//        // Number buttons properties
//        readonly property int numBtnSize         : 60              // Number buttons size
//        readonly property int numBtnRadius       : numBtnSize/2    // Number buttons radius
//        readonly property string numBtnColor     : "#4d4d4d"       // Number buttons color
//        readonly property int numBtnTxtSize      : 30              // Number buttons text size
//        readonly property int numBtnMargin       : 10              // Number buttons margin
//        readonly property bool numBtnTxtVisible  : true            // Number buttons text visible
//        readonly property int numBtnBorder       : 2               // Number buttons border size
//        readonly property bool numBtnTxtBold     : true            // Number buttons text bold

//        // Timer text properties
//        readonly property int txtSize            : 50              // Timer text size
//        readonly property string txtColor        : "#33ff33"       // Timer text color
//        readonly property bool txtBold           : true            // Timer text bold

//        // Time cursor position
//        property int tPosition          : 0               // Timer position
//        property bool usefulButton      : true

//        property int firstItemValue     : dInfo.chronHrFirstDgt
//        property int secondItemValue    : dInfo.chronHrSecondDgt
//        property int thirtItemValue     : dInfo.chronScFirstDgt
//        property int fourthItemValue    : dInfo.chronScSecondDgt

//        id:rManTimer
//        width: api.pageWidth
//        height: api.mainHeight
//        color: "#333333"

//        Header
//        {
//            id: hPageManTimer
//            hWidth: parent.width
//            hHeight: parent.height / 6
//            anchors.left: parent.left
//            anchors.top: parent.top
//            z:3
//        }

//        Rectangle
//        {
//            id: tempTimeArea
//            width: parent.width
//            height: (4 * parent.height) / 6
//            anchors.left: hPageManTimer.left
//            anchors.top: hPageManTimer.bottom
//            color: "transparent"

//            Rectangle {
//                id: tempTimeMenu
//                width: parent.width
//                height: parent.height / 4
//                anchors.left: tempTimeArea.left
//                anchors.top: tempTimeArea.top
//                color: "#4d4d4d"

//                Rectangle {
//                    width: 200
//                    height: 4
//                    color: "#33ff33"
//                    anchors.horizontalCenter: timerMenuButton.horizontalCenter
//                    anchors.top: parent.top
//                }
//                Button {
//                    id: tempMenuButton
//                    buttonWitdh: 200
//                    buttonHeight: parent.height
//                    textVisible: true
//                    textSource: "Temperature"
//                    txtSize: 24
//                    txtBold: true
//                    anchors.left: parent.left
//                    anchors.verticalCenter: parent.verticalCenter
//                    MouseArea {
//                        anchors.fill: parent
//                        onClicked: {
//                            myLoader.sourceComponent = mainManTemp
//                        }
//                    }
//                }
//                Button {
//                    id: timerMenuButton
//                    buttonWitdh: 200
//                    buttonHeight: parent.height
//                    textVisible: true
//                    textSource: "Timer"
//                    textColor: "#33ff33"
//                    txtSize: 24
//                    txtBold: true
//                    anchors.left: tempMenuButton.right
//                    anchors.top: tempMenuButton.top
//                }
//            }

//            Rectangle {
//                id: setTimeValue
//                width: parent.width
//                height: parent.height / 4
//                anchors.left: tempTimeMenu.left
//                anchors.top: tempTimeMenu.bottom
//                color: "transparent"
//                Text {
//                    id: txtDot
//                    text: ":"
//                    anchors.verticalCenter: parent.verticalCenter
//                    anchors.horizontalCenter: parent.horizontalCenter
//                    color: txtColor
//                    font.pixelSize: txtSize
//                    font.bold: txtBold
//                }
//                Text {
//                    id: txtHrSecondItem
//                    text: secondItemValue
//                    color: txtColor
//                    font.pixelSize: txtSize
//                    font.bold: txtBold
//                    anchors.right: txtDot.left
//                    anchors.top: txtDot.top
//                }
//                Text {
//                    id: txtHrFirstItem
//                    text: firstItemValue
//                    color: txtColor
//                    font.pixelSize: txtSize
//                    font.bold: txtBold
//                    anchors.right: txtHrSecondItem.left
//                    anchors.top: txtHrSecondItem.top
//                    onTextChanged: {

//                    }
//                }
//                Text {
//                    id: txtScFirstItem
//                    text: thirtItemValue
//                    color: txtColor
//                    font.pixelSize: txtSize
//                    font.bold: txtBold
//                    anchors.left: txtDot.right
//                    anchors.top: txtDot.top
//                }
//                Text {
//                    id: txtScSecondItem
//                    text: fourthItemValue
//                    anchors.verticalCenter: parent.verticalCenter
//                    anchors.horizontalCenter: parent.horizontalCenter
//                    color: txtColor
//                    font.pixelSize: txtSize
//                    font.bold: txtBold
//                    anchors.left: txtScFirstItem.right
//                    anchors.top: txtScFirstItem.top
//                }
//                Rectangle {
//                    id: cursorRect
//                    width: txtHrFirstItem.width
//                    height: 3
//                    anchors.left: tPosition == 0 ? txtHrFirstItem.left :  tPosition == 1 ? txtHrSecondItem.left :  tPosition == 2 ? txtScFirstItem.left :txtScSecondItem.left
//                    anchors.top: txtHrFirstItem.bottom
//                    color: txtColor
//                }
//            }

//            Grid {
//                id: grd
//                anchors.top: setTimeValue.bottom
//                anchors.horizontalCenter: setTimeValue.horizontalCenter
//                anchors.topMargin: 10

//                spacing: 10
//                columns: 5
//                rows: 2

//                Repeater {
//                    model: 10

//                    Button{
//                        id:numBtn3
//                        buttonWitdh: numBtnSize
//                        buttonHeight: numBtnSize
//                        textVisible: numBtnTxtVisible
//                        textSource: index//"3"
//                        rectRadius: numBtnRadius
//                        rectColor: numBtnColor
//                        txtSize: numBtnTxtSize
//                        txtBold: numBtnTxtBold
//                        rectBorderSize: numBtnBorder
//                        visible: (tPosition == 2) && ((index == 6)||(index == 7)||(index == 8)||(index==9)) ? false : true

//                        MouseArea {
//                            anchors.fill: parent
//                            onClicked: {
//                                shiftCursor(tPosition,index);
//                            }
//                        }
//                    }
//                }
//            }
//        }

//        Footer
//        {
//            id: fPageManTimer
//            hWidth: parent.width
//            hHeight: parent.height / 6
//            anchors.left: parent.left
//            anchors.bottom: parent.bottom
//            firstButtonWidth: 100
//            firstButtonHeight: 30
//            firstButtonVisible: true
//            firstButtonText: "Next"
//            z:3

////            MouseArea {
////                anchors.fill: parent
////                onClicked: {
////                        myLoader.sourceComponent = mainRunning
////                }
////            }
//            onClk: {
//                console.log("tiklandi uceru");
//            }
//        }

//        function shiftCursor(n,v) {
////            console.log("N=" + n + " V= "+ v);
//            if(n === 0){
//                tPosition++;
//                dInfo.chronHrFirstDgt = v;
//            }
//            else if(n ===1){
//                dInfo.chronHrSecondDgt = v;
//                tPosition++;
//            }
//            else if(n ===2){
//                dInfo.chronScFirstDgt = v
//                tPosition++;
//            }
//            else{
//                dInfo.chronScSecondDgt = v;
//                tPosition=0;
//            }
//        }
//    }
}
