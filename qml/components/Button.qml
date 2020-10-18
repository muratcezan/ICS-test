import QtQuick 2.0

// Button
Rectangle {
    property int buttonWitdh                            // Button width
    property int buttonHeight                           // Button height
    property bool imgVisible        : false             // Button image visible
    property string imgSource       : ""                // Image source
    property bool textVisible       : false             // Button text visible
    property string textSource      : ""                // Button text source
    property int imgWidth           : 0                 // Button image width
    property int imgHeight          : 0                 // Button image height
    property int rectRadius         : 0                 // Button area radius
    property string rectColor       : "transparent"     // Button area color
    property string textColor       : "white"           // Button text color
    property int txtSize            : 14                // Button text size
    property bool txtBold           : false             // Button text bold
    property int rectBorderSize     : 0                 // Button border size
    property string rectBorderColor : "white"           // Button border color

    id: btn
    width: buttonWitdh
    height: buttonHeight
    color: rectColor
    radius: rectRadius //buttonWitdh/4
    border.width: rectBorderSize
    border.color: rectBorderColor

    // Button image
    Image {
        id: btnImage
        source: imgSource
        visible: imgVisible
        width: imgWidth //parent.width - 20
        height: imgHeight //parent.height - 20
        anchors.centerIn: parent
    }

    // Button Text
    Text {
        id: btnTxt
        text: textSource
        visible: textVisible
        anchors.centerIn: parent
        color: textColor
        font.pixelSize: txtSize
        font.bold: txtBold
    }
}
