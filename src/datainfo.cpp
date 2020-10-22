#include "../hdr/datainfo.h"

DataInfo::DataInfo(QObject *parent) : QObject(parent),
    dataController(new DataController(this))
{
    setCurrentTime(dataController->getCurrentTime());
    setCurrentDate(dataController->getCurrentDate());
}

// Time
void DataInfo::setCurrentTime(QString currentTime)
{
    m_currentTime = currentTime;
    emit currentTimeChanged(currentTime);
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
