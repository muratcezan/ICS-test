import QtQuick 2.0

Item {
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
