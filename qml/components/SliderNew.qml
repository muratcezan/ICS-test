import QtQuick 2.0
import QtQuick.Controls 2.12

// Custom Slider
Slider {
    // Maximum temperature value
    readonly property int maxTemp       : 500
    // Minimum temperature value
    readonly property int minTemp       : 350
    // Slider step size
    readonly property int stepsSize     : 5
    // Slider current value
    property int tempValue : control.value

    id: control
    from: minTemp
    to: maxTemp
    stepSize: stepsSize

    // Custom slider background
    background: Rectangle {
        x: control.leftPadding
        y: control.topPadding + control.availableHeight / 2 - height / 2
        width: control.availableWidth
        height: implicitHeight
        implicitWidth: 200
        implicitHeight: 4
        color: "transparent"
        radius: 2

        Rectangle {
            width: control.visualPosition * parent.width
            height: parent.height
            color: "transparent"
            radius: 2
        }
    }

    // Custom handle
    handle: Image {
        id: tri
        source: "qrc:/pics/other/triangle.png"
        x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
        width: 35
        height: 35
        scale: (control.pressed) ? 1.3 : 1

        Behavior on scale {
            NumberAnimation { duration: 100 }
        }
    }
}
