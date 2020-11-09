#include "../hdr/datainfo.h"

DataInfo::DataInfo(QObject *parent) : QObject(parent),
    dataController(new DataController(this))
{
    timer_ls = new QTimer(this);
    timerChron = new QTimer(this);

    QObject::connect(timer_ls,SIGNAL(timeout()), this, SLOT(UpdateTime()));
    QObject::connect(timer_ls,SIGNAL(timeout()), this, SLOT(UpdateDate()));
    QObject::connect(timerChron, SIGNAL(timeout()), this,SLOT(ChronTimer()));

    timer_ls->start(1000);
    timerChron->start(1000);

    setChronHrFirstDgt(0);
    setChronHrSecondDgt(0);
    setChronScFirstDgt(0);
    setChronScSecondDgt(0);
    setOvenStatus(false);
    setTemp("350");
    setCurrentTime(QTime::currentTime().toString("hh:mm"));
}

// Time
void DataInfo::setCurrentTime(QString currentTime)
{
    m_currentTime =currentTime;
    emit currentTimeChanged(m_currentTime);
}
QString DataInfo::currentTime() const
{
    return m_currentTime;
}

// Date
void DataInfo::setCurrentDate(QString currentDate)
{
    m_currentDate = currentDate;
    emit currentDateChanged(currentDate);
}
QString DataInfo::currentDate() const
{
    return m_currentDate;
}

// Temp
void DataInfo::setTemp(QString temp)
{
    m_temp = temp;
    emit tempChanged(m_temp);
}
QString DataInfo::temp() const
{
    return m_temp;
}

// Chronometer digits
void DataInfo::setChronHrFirstDgt(int value) {
    m_chronHrFirstDgt = value;
    emit chronHrFirstDgtChanged(m_chronHrFirstDgt);
}
int DataInfo::chronHrFirstDgt() const {
    return m_chronHrFirstDgt;
}
void DataInfo::setChronHrSecondDgt(int value) {
    m_chronHrSecondDgt = value;
    emit chronHrSecondDgtChanged(m_chronHrSecondDgt);
}
int DataInfo::chronHrSecondDgt() const {
    return m_chronHrSecondDgt;
}
void DataInfo::setChronScFirstDgt(int value) {
    m_chronScFirstDgt = value;
    emit chronScFirstDgtChanged(m_chronScFirstDgt);
}
int DataInfo::chronScFirstDgt() const {
    return m_chronScFirstDgt;
}
void DataInfo::setChronScSecondDgt(int value) {
    m_chronScSecondDgt = value;
    emit chronScSecondDgtChanged(m_chronScSecondDgt);
}
int DataInfo::chronScSecondDgt() const {
    return m_chronScSecondDgt;
}

//Oven Status
void DataInfo::setOvenStatus(bool status){
    if (status)
        timerChron->start(1000); // 1000 is test value, normally value is 60000
    else
        timerChron->stop();

    m_ovenStatus = status;
    emit ovenStatusChanged(m_ovenStatus);
}
bool DataInfo::ovenStatus() const{
    return m_ovenStatus;
}

void DataInfo::UpdateTime()
{
   emit setCurrentTime(QTime::currentTime().toString("hh:mm"));
}

void DataInfo::UpdateDate()
{
   emit setCurrentDate(dataController->getCurrentDate());
}

void DataInfo::ChronTimer(){
    dataController->setHrFirstDigit(chronHrFirstDgt());
    dataController->setHrSecondDigit(chronHrSecondDgt());
    dataController->setScFirstDigit(chronScFirstDgt());
    dataController->setScSecondDigit(chronScSecondDgt());

    int generalSeconds =dataController->calculateChron();

    setChronHrFirstDgt(dataController->getHrFirstDigit());
    setChronHrSecondDgt(dataController->getHrSecondDigit());
    setChronScFirstDgt(dataController->getScFirstDigit());
    setChronScSecondDgt(dataController->getScSecondDigit());
    
    if(generalSeconds <= 0)
    {
        setOvenStatus(false);
        timerChron->stop();
    }
}
