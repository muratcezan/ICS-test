#include "../hdr/datainfo.h"

DataInfo::DataInfo(QObject *parent) : QObject(parent),
    dataController(new DataController(this))
{
//    setCurrentTime(dataController->getCurrentTime());
    setCurrentDate(dataController->getCurrentDate());
    setStatus("Ready");
    setTemp("0");
    setTriPos(1);

    timer_ls = new QTimer(this);
    QObject::connect(timer_ls,SIGNAL(timeout()), this, SLOT(UpdateTime()));
    timer_ls->start(1000);

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
    setTriPos(temp.toInt());
    m_temp = QString::number(dataController->getTemp(temp.toInt()));
    emit tempChanged(m_temp);
}
QString DataInfo::temp() const
{
    return m_temp;
}

// Triange position
void DataInfo::setTriPos(int pos)
{
    m_tripos = pos;
    emit triPosChanged(m_tripos);
}
int DataInfo::triPos() const
{
    return m_tripos;
}

// Status
void DataInfo::setStatus(QString status)
{
    m_status = status;
    emit statusChanged(m_status);
}
QString DataInfo::status() const
{
    return m_status;
}

void DataInfo::UpdateTime()
{
   emit setCurrentTime(QTime::currentTime().toString("hh:mm"));
}
