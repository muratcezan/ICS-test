#include "../hdr/datacontroller.h"

#include <QDebug>

DataController::DataController(QObject *parent) : QObject(parent)
{

}

// Set current time
QString DataController::getCurrentTime() {
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

// Set current date
QString DataController::getCurrentDate() {
    QDateTime now = QDateTime::currentDateTime();
    int dy = now.date().dayOfWeek();
    int mnt = now.date().month();
    int yr = now.date().year();
    QLocale lc;
    QString month = lc.standaloneMonthName(mnt,lc.ShortFormat);
    QString day = lc.standaloneDayName(dy);

    return day + "," + month + " " + QString::number(yr);
}

// Digits
void DataController::setHrFirstDigit(int value) {
    m_hrFirstDigit = value;
}
int DataController::getHrFirstDigit() const{
    return m_hrFirstDigit;
}
void DataController::setHrSecondDigit(int value) {
    m_hrSecondDigit = value;
}
int DataController::getHrSecondDigit() const{
    return m_hrSecondDigit;
}
void DataController::setScFirstDigit(int value) {
    m_scFirstDigit = value;
}
int DataController::getScFirstDigit() const{
    return m_scFirstDigit;
}
void DataController::setScSecondDigit(int value) {
    m_scSecondDigit = value;
}
int DataController::getScSecondDigit() const{
    return m_scSecondDigit;
}

void DataController::setGeneralSeconds(int value) {
    m_generalSeconds = value;
}
int DataController::getGeneralSeconds() const {
    return m_generalSeconds;
}

// Calculate chronometer value
int DataController::calculateChron(){
    int sc1 = factor1 * getScSecondDigit();
    int sc2 = factor2 * getScFirstDigit();
    int sc3 = factor3 * getHrSecondDigit();
    int sc4 = factor4 * getHrFirstDigit();

    int gSeconds = (sc1 + sc2 + sc3 + sc4) - 1;
    setGeneralSeconds(gSeconds);

    int cs1 = getGeneralSeconds() / factor4;
    int css1 = getGeneralSeconds() - (cs1 *factor4);
    setHrFirstDigit(cs1);

    int cs2 = css1 / factor3;
    int css2 = css1 - (cs2 * factor3);
    setHrSecondDigit(cs2);

    int cs3 = css2 / factor2;
    int css3 = css2 - (cs3 * factor2);

    int cs4 = css3 / factor1;

    setScFirstDigit(cs3);
    setScSecondDigit(cs4);

    return getGeneralSeconds();
}
