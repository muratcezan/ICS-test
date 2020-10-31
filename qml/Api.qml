import QtQuick 2.0

Item {
    // Static values for not change
    readonly property int mainWidth     : 1600          // Main window width
    readonly property int mainHeight    : 450           // Main window height
    readonly property int barWidth      : 360           // Left and Right bar width
    readonly property int pageWidth     : 880           // Page width

    property int pagesWidth: 880
    property int progressBarWidth: ((13*pagesWidth)/14)

    property bool lightOven                 : false
    property bool ovenPower                 : false
    property bool ovenStatus                : dInfo.ovenStatus
    property bool finishingOven             : false
    property double progressBarValue        : 0.0

    // Chronometer Time Digits
    property string chronoHrFirstDigit      : dInfo.chronHrFirstDgt
    property string chronoHrSecondDigit     : dInfo.chronHrSecondDgt
    property string chronoMnFirstDigit      : dInfo.chronScFirstDgt
    property string chronoMnSecondDigit     : dInfo.chronScSecondDgt

    property string temperature             : dInfo.temp
    property int alarmValue                 : dInfo.chronHrFirstDgt + dInfo.chronHrSecondDgt + dInfo.chronScFirstDgt + dInfo.chronScSecondDgt
    property int tempTriangleCurrentValue   : 0
}
