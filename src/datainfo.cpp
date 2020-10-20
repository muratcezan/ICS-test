#include "../hdr/datainfo.h"

const QString pStatus                        = QLatin1String("Status");
const QString pTime                          = QLatin1String("Time");
const QString pTemp                          = QLatin1String("Temp");
const QString pDate                          = QLatin1String("Date");

// Pages
const QString pPageDefault                   = QLatin1String("PageDefaultZ");
const QString pPageCamera                    = QLatin1String("PageCameraZ");
const QString pPageCookBook                  = QLatin1String("ManuelCookBookZ");
const QString pPageManuelBake                = QLatin1String("PageManuelBakeZ");
const QString pPageRunning                   = QLatin1String("PageRunningZ");
const QString pPageManuelTimer               = QLatin1String("PageManuelTimerZ");
const QString pPageManuelTemp                = QLatin1String("PageManuelTempZ");

DataInfo::DataInfo(QObject *parent) : QObject(parent),
    dataItem(new QQmlPropertyMap(this)),
    dataController(new DataController(this))
{
    setStatus("Ready");
    setTime(dataController->getCurrentTime());
    setDate(dataController->getCurrentDate());

    setTemp(425);

    setPageDefaultZ(3);
    setPageCameraZ(0);
    setPageCookBookZ(0);
    setPageRunningZ(0);
    setPageManuelTimerZ(0);
    setPageManuelTempZ(0);
    setPageManuelBakeZ(0);

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

// Date
void DataInfo::setDate(const QString Date){
    dataItem->insert(pDate,Date);
}
QString DataInfo::getDate(){
    return dataItem->value(pDate).toString();
}

// Temp
void DataInfo::setTemp(const int Temp){
    dataItem->insert(pTemp,Temp);
}
int DataInfo::getTemp(){
    return dataItem->value(pTemp).toInt();
}

// Pages Z position
void DataInfo::setPageDefaultZ(const int zPos){
    dataItem->insert(pPageDefault,zPos);
}
int DataInfo::getPageDefaultZ(){
    return dataItem->value(pPageDefault).toInt();
}
void DataInfo::setPageCameraZ(const int zPos){
    dataItem->insert(pPageCamera,zPos);
}
int DataInfo::getPageCameraZ(){
    return dataItem->value(pPageCamera).toInt();
}
void DataInfo::setPageCookBookZ(const int zPos){
    dataItem->insert(pPageCookBook,zPos);
}
int DataInfo::getSetPageCookBookZ(){
    return dataItem->value(pPageCookBook).toInt();
}
void DataInfo::setPageRunningZ(const int zPos){
    dataItem->insert(pPageRunning,zPos);
}
int DataInfo::getPageRunningZ(){
    return dataItem->value(pPageRunning).toInt();
}
void DataInfo::setPageManuelBakeZ(const int zPos){
    dataItem->insert(pPageManuelBake,zPos);
}
int DataInfo::getPageManuelBakeZ(){
    return dataItem->value(pPageManuelBake).toInt();
}
void DataInfo::setPageManuelTimerZ(const int zPos){
    dataItem->insert(pPageManuelTimer,zPos);
}
int DataInfo::getPageManuelTimerZ(){
    return dataItem->value(pPageManuelTimer).toInt();
}
void DataInfo::setPageManuelTempZ(const int zPos){
    dataItem->insert(pPageManuelTemp,zPos);
}
int DataInfo::getPageManuelTempZ(){
    return dataItem->value(pPageManuelTemp).toInt();
}

// Qml slot
void DataInfo::valueChanged(const QString &key, const QString &value)
{
//    qDebug() << "Qml data update -> Key: " << key << " Value: " << value;

    if(key == "temp"){
        setTemp(dataController->getTemp(value.toInt()));
    }
}
