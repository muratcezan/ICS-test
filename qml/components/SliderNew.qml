import QtQuick 2.0

Rectangle {
    readonly property int tempXMax               : api.pageWidth                // Temp x scale maximum value
    readonly property int tempTriangleMargins    : tempXMax/44                  // Temp margins value
    readonly property double tempMaxMarginFactor : 12.5                         // Calculate Margins for factor value
    readonly property int tempMaxMarginValue     : tempXMax - (tempXMax / tempMaxMarginFactor)   // Temp max scale value
    readonly property int limitFactor            : 2                            // Limit factor

    id: mySlider
    height: tempTriangleMargins
    radius: tempTriangleMargins/2
    smooth: true
    color:"transparent"
    anchors {
        leftMargin: tempTriangleMargins
        rightMargin: tempTriangleMargins
    }

    Image {
        id: triange
        source: "qrc:/pics/other/triangle.png"
        width: 30
        height: 30
        x: api.tempTriangleCurrentValue; y:1

        MouseArea {
            id:triangleMA
            anchors.fill: parent
            drag.target: parent
            drag.axis: Drag.XAxis
            drag.minimumX: 0
            drag.maximumX: tempMaxMarginValue
            onPositionChanged: {
                api.tempTriangleCurrentValue = triange.x
                dInfo.setTemp(calculateTemp(triange.x).toString());
            }
        }
    }

    function calculateTemp(triangeCurrentValue)
    {
        var data = tempMaxMarginValue/30
        var firstLastValue = data/2
        if(triangeCurrentValue < firstLastValue)
            return 350;
        else if(triangeCurrentValue >= firstLastValue
                && triangeCurrentValue <= data+firstLastValue)
            return 355;
        else if(triangeCurrentValue >= data+firstLastValue
                && triangeCurrentValue <= (2*data)+firstLastValue)
            return 360;
        else if(triangeCurrentValue >= (2*data)+firstLastValue
                && triangeCurrentValue <= (3*data)+firstLastValue)
            return 365;
        else if(triangeCurrentValue >= (3*data)+firstLastValue
                && triangeCurrentValue <= (4*data)+firstLastValue)
            return 370;
        else if(triangeCurrentValue >= (4*data)+firstLastValue
                && triangeCurrentValue <= (5*data)+firstLastValue)
            return 375;
        else if(triangeCurrentValue >= (5*data)+firstLastValue
                && triangeCurrentValue <= (6*data)+firstLastValue)
            return 380;
        else if(triangeCurrentValue >= (6*data)+firstLastValue
                && triangeCurrentValue <= (7*data)+firstLastValue)
            return 385;
        else if(triangeCurrentValue >= (7*data)+firstLastValue
                && triangeCurrentValue <= (8*data)+firstLastValue)
            return 390;
        else if(triangeCurrentValue >= (8*data)+firstLastValue
                && triangeCurrentValue <= (9*data)+firstLastValue)
            return 395;
        else if(triangeCurrentValue >= (9*data)+firstLastValue
                && triangeCurrentValue <= (10*data)+firstLastValue)
            return 400;
        else if(triangeCurrentValue >= (10*data)+firstLastValue
                && triangeCurrentValue <= (11*data)+firstLastValue)
            return 405;
        else if(triangeCurrentValue >= (11*data)+firstLastValue
                && triangeCurrentValue <= (12*data)+firstLastValue)
            return 410;
        else if(triangeCurrentValue >= (12*data)+firstLastValue
                && triangeCurrentValue <= (13*data)+firstLastValue)
            return 415;
        else if(triangeCurrentValue >= (13*data)+firstLastValue
                && triangeCurrentValue <= (14*data)+firstLastValue)
            return 420;
        else if(triangeCurrentValue >= (14*data)+firstLastValue
                && triangeCurrentValue <= (15*data)+firstLastValue)
            return 425;
        else if(triangeCurrentValue >= (15*data)+firstLastValue
                && triangeCurrentValue <= (16*data)+firstLastValue)
            return 430;
        else if(triangeCurrentValue >= (16*data)+firstLastValue
                && triangeCurrentValue <= (17*data)+firstLastValue)
            return 435;
        else if(triangeCurrentValue >= (17*data)+firstLastValue
                && triangeCurrentValue <= (18*data)+firstLastValue)
            return 440;
        else if(triangeCurrentValue >= (18*data)+firstLastValue
                && triangeCurrentValue <= (19*data)+firstLastValue)
            return 445;
        else if(triangeCurrentValue >= (19*data)+firstLastValue
                && triangeCurrentValue <= (20*data)+firstLastValue)
            return 450;
        else if(triangeCurrentValue >= (20*data)+firstLastValue
                && triangeCurrentValue <= (21*data)+firstLastValue)
            return 455;
        else if(triangeCurrentValue >= (21*data)+firstLastValue
                && triangeCurrentValue <= (22*data)+firstLastValue)
            return 460;
        else if(triangeCurrentValue >= (22*data)+firstLastValue
                && triangeCurrentValue <= (23*data)+firstLastValue)
            return 465;
        else if(triangeCurrentValue >= (23*data)+firstLastValue
                && triangeCurrentValue <= (24*data)+firstLastValue)
            return 470;
        else if(triangeCurrentValue >= (24*data)+firstLastValue
                && triangeCurrentValue <= (25*data)+firstLastValue)
            return 475;
        else if(triangeCurrentValue >= (25*data)+firstLastValue
                && triangeCurrentValue <= (26*data)+firstLastValue)
            return 480;
        else if(triangeCurrentValue >= (26*data)+firstLastValue
                && triangeCurrentValue <= (27*data)+firstLastValue)
            return 485;
        else if(triangeCurrentValue >= (27*data)+firstLastValue
                && triangeCurrentValue <= (28*data)+firstLastValue)
            return 490;
        else if(triangeCurrentValue >= (28*data)+firstLastValue
                && triangeCurrentValue <= (29*data)+firstLastValue)
            return 495;
        else
            return 500;
    }
}
