#ifndef DATAINFO_H
#define DATAINFO_H

#include <QObject>
#include <QQmlPropertyMap>
#include <QString>
#include <QDebug>

#include "hdr/datacontroller.h"

class DataInfo : public QObject
{
    Q_OBJECT

private:
    QQmlPropertyMap *dataItem;
    DataController *dataController;
public:
    explicit DataInfo(QObject *parent = nullptr);

    QQmlPropertyMap *GetData() const { return dataItem; }

    // Status
    void setStatus(const QString Status);
    QString getStatus();

    // Time
    void setTime(const QString Time);
    QString getTime();




signals:

};

#endif // DATAINFO_H
