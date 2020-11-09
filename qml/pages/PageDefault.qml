import QtQuick 2.0
import QtQuick.Controls 2.12

Page {
    property alias currentTimeText: currentTime.text
    property alias currentDateText: currentDate.text

    id: componentDefault

    Rectangle {

        id: defaultPage
        width: 880
        height: 450
        color: "#333333"

        Text {
            id: currentTime
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 70
            font.pixelSize: 120
            font.bold: true
        }
        Text {
            id: currentDate
            color: "white"
            anchors.top: currentTime.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            font.pixelSize: 40
        }
    }
}
