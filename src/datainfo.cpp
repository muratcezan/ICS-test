#include "../hdr/datainfo.h"

const QString pStatus                        = QLatin1String("Status");
const QString pTime                          = QLatin1String("Time");

DataInfo::DataInfo(QObject *parent) : QObject(parent),
    dataItem(new QQmlPropertyMap(this)),
    dataController(new DataController(this))
{
    setStatus("Ready");
    setTime(dataController->getCurrentTime());
}

// Status
void DataInfo::setStatus(const QString Status) {
    dataItem->insert(pStatus, Status);
}
QString DataInfo::getStatus() {
    return dataItem->value(pStatus).toString();
}

// Time
void DataInfo::setTime(const QString Time){
    dataItem->insert(pTime,Time);
}
QString DataInfo::getTime(){
    return dataItem->value(pTime).toString();
}
