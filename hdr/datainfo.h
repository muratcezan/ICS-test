#ifndef DATAINFO_H
#define DATAINFO_H

#include <QObject>
#include <QQmlPropertyMap>
#include <QThread>
#include <QTimer>
#include <QString>
#include <QDebug>


#include "hdr/datacontroller.h"

class DataInfo : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString currentTime READ currentTime WRITE setCurrentTime NOTIFY currentTimeChanged)
    Q_PROPERTY(QString currentDate READ currentDate WRITE setCurrentDate NOTIFY currentDateChanged)
    Q_PROPERTY(QDateTime dateTime READ dateTime WRITE setDateTime NOTIFY dateTimeChanged)


public:
    explicit DataInfo(QObject *parent = nullptr);

    // Current time
    void setCurrentTime(QString currentTime);
    QString currentTime() const;

    // Current date
    void setCurrentDate(QString currentDate);
    QString currentDate() const;

    // Current date
    void setDateTime(QString currentDate);
    QString dateTime() const;




private:
    // Data Controller Object
    DataController *dataController;

    QString m_currentTime;
    QString m_currentDate;

    QDateTime m_dateTime;

signals:
    void currentTimeChanged(QString);
    void currentDateChanged(QString);

    void dateTimeChanged(QDateTime);

};

#endif // DATAINFO_H
