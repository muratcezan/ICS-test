import QtQuick 2.0

Rectangle {
    property string bigLineColor        :               "black"
    property string shortLineColor      :               "#cccccc"
    property string textColor           :               "white"
    property int textSize               :               18
    property double whiteLineMargin     :               27.2

    id: tempBar
    width: parent.width - 60
    height: ((2*parent.height) / 3) - 20
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.top: parent.top
    anchors.topMargin: 15
    color:"#737373"
    z:1

    Rectangle {
        id:lineBlack1
        height: parent.height - 5
        width: 4
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        color: bigLineColor
    }
    Rectangle {
        id:lineBlack2
        height: parent.height - 5
        width: 4
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.leftMargin: 136
        color: bigLineColor
    }
    Rectangle {
        id:lineBlack3
        height: parent.height - 5
        width: 4
        anchors.bottom: lineBlack2.bottom
        anchors.left: lineBlack2.left
        anchors.leftMargin: 136
        color: bigLineColor
    }
    Rectangle {
        id:lineBlack4
        height: parent.height - 5
        width: 4
        anchors.bottom: lineBlack3.bottom
        anchors.left: lineBlack3.left
        anchors.leftMargin: 136
        color: bigLineColor
    }
    Rectangle {
        id:lineBlack5
        height: parent.height - 5
        width: 4
        anchors.bottom: lineBlack4.bottom
        anchors.left: lineBlack4.left
        anchors.leftMargin: 136
        color: bigLineColor
    }
    Rectangle {
        id:lineBlack6
        height: parent.height - 5
        width: 4
        anchors.bottom: lineBlack5.bottom
        anchors.left: lineBlack5.left
        anchors.leftMargin: 136
        color: bigLineColor
    }
    Rectangle {
        id:lineBlack7
        height: parent.height - 5
        width: 4
        anchors.bottom: lineBlack6.bottom
        anchors.left: lineBlack6.left
        anchors.leftMargin: 136
        color: bigLineColor
    }
    Rectangle {
        id:lineGray1
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineBlack1.left
        anchors.leftMargin: whiteLineMargin
        color: "#cccccc"
    }
    Rectangle {
        id:lineGray2
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray1.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray3
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray2.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray4
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray3.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray5
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray4.left
        anchors.leftMargin: 2 * whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray6
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray5.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray7
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray6.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray8
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray7.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray9
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray8.left
        anchors.leftMargin: 2 * whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray10
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray9.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray11
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray10.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray12
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray11.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray13
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray12.left
        anchors.leftMargin: 2 * whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray14
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray13.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray15
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray14.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray16
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray15.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray17
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray16.left
        anchors.leftMargin: 2 * whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray18
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray17.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray19
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray17.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray20
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray19.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray21
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray20.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray22
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray21.left
        anchors.leftMargin: 2 * whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray23
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray22.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray24
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray23.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Rectangle {
        id:lineGray25
        height: (2*parent.height) / 3
        width: 4
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: lineGray24.left
        anchors.leftMargin: whiteLineMargin
        color: shortLineColor
    }
    Text {
        text: "350\xB0F"
        anchors.top: lineBlack1.bottom
        anchors.horizontalCenter: lineBlack1.horizontalCenter
        color: textColor
        font.pixelSize: textSize
    }
    Text {
        text: "375\xB0F"
        anchors.top: lineBlack2.bottom
        anchors.horizontalCenter: lineBlack2.horizontalCenter
        color: textColor
        font.pixelSize: textSize
    }
    Text {
        text: "400\xB0F"
        anchors.top: lineBlack3.bottom
        anchors.horizontalCenter: lineBlack3.horizontalCenter
        color: textColor
        font.pixelSize: textSize
    }
    Text {
        text: "425\xB0F"
        anchors.top: lineBlack4.bottom
        anchors.horizontalCenter: lineBlack4.horizontalCenter
        color: textColor
        font.pixelSize: textSize
    }
    Text {
        text: "450\xB0F"
        anchors.top: lineBlack5.bottom
        anchors.horizontalCenter: lineBlack5.horizontalCenter
        color: textColor
        font.pixelSize: textSize
    }
    Text {
        text: "475\xB0F"
        anchors.top: lineBlack6.bottom
        anchors.horizontalCenter: lineBlack6.horizontalCenter
        color: textColor
        font.pixelSize: textSize
    }
    Text {
        text: "500\xB0F"
        anchors.top: lineBlack7.bottom
        anchors.horizontalCenter: lineBlack7.horizontalCenter
        color: textColor
        font.pixelSize: textSize
    }
}
