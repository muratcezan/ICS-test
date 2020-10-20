#include "../hdr/datacontroller.h"

DataController::DataController(QObject *parent) : QObject(parent)
{

}

// Set current time
QString DataController::getCurrentTime()
{
    QDateTime now = QDateTime::currentDateTime();
    int hr = now.time().hour();
    int min = now.time().minute();

    QString sHr;
    QString sMin;

    // Check hour number of digits
    if(hr >= 0 && hr <=9)
        sHr = "0" + QString::number(hr);
    else
        sHr = QString::number(hr);

    // Check minutes number of digits
    if(min >= 0 && min <=9)
        sMin = "0" + QString::number(min);
    else
        sMin = QString::number(min);

    return sHr + ":" + sMin;
}

// Calculate temp from slider x position
int DataController::getTemp(const int Temp)
{
    if(Temp < 12)
        return 350;
    else if(Temp >= 12 && Temp <= 38)
        return 355;
    else if(Temp >= 39 && Temp <= 65)
        return 360;
    else if(Temp >= 66 && Temp <= 92)
        return 365;
    else if(Temp >= 93 && Temp <= 119)
        return 370;
    else if(Temp >= 120 && Temp <= 146)
        return 375;
    else if(Temp >= 147 && Temp <= 175)
        return 380;
    else if(Temp >= 176 && Temp <= 202)
        return 385;
    else if(Temp >= 203 && Temp <= 230)
        return 390;
    else if(Temp >= 231 && Temp <= 257)
        return 395;
    else if(Temp >= 258 && Temp <= 283)
        return 400;
    else if(Temp >= 284 && Temp <= 309)
        return 405;
    else if(Temp >= 310 && Temp <= 338)
        return 410;
    else if(Temp >= 339 && Temp <= 366)
        return 415;
    else if(Temp >= 367 && Temp <= 392)
        return 420;
    else if(Temp >= 393 && Temp <= 419)
        return 425;
    else if(Temp >= 420 && Temp <= 447)
        return 430;
    else if(Temp >= 448 && Temp <= 474)
        return 435;
    else if(Temp >= 475 && Temp <= 500)
        return 440;
    else if(Temp >= 501 && Temp <= 527)
        return 445;
    else if(Temp >= 528 && Temp <= 557)
        return 450;
    else if(Temp >= 558 && Temp <= 582)
        return 455;
    else if(Temp >= 583 && Temp <= 610)
        return 460;
    else if(Temp >= 611 && Temp <= 636)
        return 465;
    else if(Temp >= 637 && Temp <= 665)
        return 470;
    else if(Temp >= 666 && Temp <= 693)
        return 475;
    else if(Temp >= 694 && Temp <= 718)
        return 480;
    else if(Temp >= 719 && Temp <= 746)
        return 485;
    else if(Temp >= 747 && Temp <= 774)
        return 490;
    else if(Temp >= 775 && Temp <= 799)
        return 495;
    else if(Temp >= 800)
        return 500;
}
