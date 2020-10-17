import QtQuick 2.0

// Button
Rectangle {

    property int buttonWitdh            // Button height dependency width
    property bool imgVisible            // Button image visible
    property string imgSource           // Image source
    property bool textVisible           // Button text visible
    property string textSource          // Button text source

    id: btn
    width: buttonWitdh
    height: buttonWitdh
    color: "transparent"
    radius: buttonWitdh/4

    // Button image
    Image {
        id: btnImage
        source: imgSource
        visible: imgVisible
    }

    // Button Text
    Text {
        id: btnTxt
        text: textSource
        visible: textVisible
    }
}
