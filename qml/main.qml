import QtQuick 2.12
import QtQuick.Window 2.12

import "components"
import "pages"

Window {
    width: 1600
    height: 450
    visible: true
    title: qsTr("Hello World")

    LeftBar
    {
        id: leftBar
    }

    PageDefault
    {
        anchors.left: leftBar.right
        anchors.top: leftBar.top
    }

    RightBar
    {
        id: rightBar
    }
}
