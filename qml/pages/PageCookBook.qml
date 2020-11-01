import QtQuick 2.0

import "../components"

Component
{
    id: cCookBook

    Rectangle
    {
        id:rCookBook
        width: api.pageWidth
        height: api.mainHeight
        color: "#333333"
        visible: api.ovenPower ? true : false

        Header
        {
            id: hPageCookBook
            hWidth: parent.width
            hHeight: parent.height / 6
            anchors.left: parent.left
            anchors.top: parent.top
            z:3
        }

        Button
        {
            id: cookItem
            buttonWitdh: 120
            buttonHeight: 40
            textVisible: true
            textSource: "Duck"
            rectRadius: 20
            rectColor: "#a6a6a6"
            rectBorderSize: 1
            anchors.top: hPageCookBook.bottom
            anchors.left: hPageCookBook.left
            anchors.leftMargin: 20
            anchors.topMargin: 20
        }

        Footer
        {
            id: fPageCookBook
            hWidth: parent.width
            hHeight: parent.height / 6
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            firstButtonVisible: false
            secondButtonVisible: false
            z:3
        }

    }
}
