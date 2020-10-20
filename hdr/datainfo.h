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

    // Date
    void setDate(const QString Date);
    QString getDate();

    // Temp
    void setTemp(const int Temp);
    int getTemp();

    // Pages
    void setPageDefaultZ(const int zPos);
    int getPageDefaultZ();
    void setPageCameraZ(const int zPos);
    int getPageCameraZ();
    void setPageCookBookZ(const int zPos);
    int getSetPageCookBookZ();
    void setPageManuelBakeZ(const int zPos);
    int getPageManuelBakeZ();
    void setPageRunningZ(const int zPos);
    int getPageRunningZ();
    void setPageManuelTimerZ(const int zPos);
    int getPageManuelTimerZ();
    void setPageManuelTempZ(const int zPos);
    int getPageManuelTempZ();

signals:

public slots:
    void valueChanged(const QString &key, const QString &value);
};

#endif // DATAINFO_H
