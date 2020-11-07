import QtQuick 2.0
import QtQuick.Controls 2.12

Page {
    property alias currentTimeText: currentTime.text
    property alias currentDateText: currentDate.text
    property alias rectColor: defaultPage.color

    id: componentDefault

    Rectangle {

        id: defaultPage
        width: 880
        height: 450
//        color: "transparent"

        Text {
            id: currentTime
            color: "red"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 70
            font.pixelSize: 120
            font.bold: true
        }
        Text {
            id: currentDate
            color: "red"
            anchors.top: currentTime.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 40
        }
    }
}

//import QtQuick 2.0

//Component
//{
//    id: cDefault

//    Rectangle
//    {
//        id:rDefault
//        width: api.pageWidth
//        height: api.mainHeight
//        color:"#333333"
//        visible: api.ovenPower ? true : false

//        Rectangle {
//            id: dPageFirstItem
//            width: parent.width
//            height: ( 3 * parent.height ) / 5
//            color: "transparent"
//            anchors.left: parent.left
//            anchors.top: parent.top

//            Text {
//                id: dPageFirstItemText
//                text: dInfo.currentTime
//                color: "white"
//                anchors.bottom: parent.bottom
//                anchors.horizontalCenter: parent.horizontalCenter
//                font.pixelSize: 120
//                font.bold: true

//            }
//        }

//        Rectangle {
//            id: dPageSeondItem
//            width: parent.width
//            height: ( 2 * parent.height ) / 5
//            color: "transparent"
//            anchors.left: dPageFirstItem.left
//            anchors.top: dPageFirstItem.bottom

//            Text {
//                id: dPageSecondItemText
//                text: dInfo.currentDate
//                color: "white"
//                anchors.top: parent.top
//                anchors.horizontalCenter: parent.horizontalCenter
//                font.pixelSize: 40
//            }
//        }
//    }
//}
