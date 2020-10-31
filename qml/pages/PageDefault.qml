import QtQuick 2.0

Component
{
    id: cDefault

    Rectangle
    {
        id:rDefault
        width: api.pageWidth
        height: api.mainHeight
        color:"#333333"
        visible: api.ovenPower ? true : false

        Rectangle {
            id: dPageFirstItem
            width: parent.width
            height: ( 3 * parent.height ) / 5
            color: "transparent"
            anchors.left: parent.left
            anchors.top: parent.top

            Text {
                id: dPageFirstItemText
                text: dInfo.currentTime
                color: "white"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 120
                font.bold: true

            }
        }

        Rectangle {
            id: dPageSeondItem
            width: parent.width
            height: ( 2 * parent.height ) / 5
            color: "transparent"
            anchors.left: dPageFirstItem.left
            anchors.top: dPageFirstItem.bottom

            Text {
                id: dPageSecondItemText
                text: dInfo.currentDate
                color: "white"
                anchors.top: parent.top
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 40
            }
        }
    }
}
