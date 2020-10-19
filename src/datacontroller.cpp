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
