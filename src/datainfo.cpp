#include "../hdr/datainfo.h"

const QString pStatus                         = QLatin1String("Status");

DataInfo::DataInfo(QObject *parent) : QObject(parent), dataItem(new QQmlPropertyMap(this))
{
    setStatus("Ready");
}

void DataInfo::setStatus(const QString Status)
{
    dataItem->insert(pStatus, Status);
}

QString DataInfo::getStatus()
{
    return dataItem->value(pStatus).toString();
}
