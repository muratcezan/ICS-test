#ifndef DATAINFO_H
#define DATAINFO_H

#include <QDateTime>
#include <QDebug>
#include <QObject>
#include <QString>
#include <QTimer>
#include <QTime>

#include "datacontroller.h"

class DataInfo : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString currentTime READ currentTime WRITE setCurrentTime NOTIFY currentTimeChanged)
    Q_PROPERTY(QString currentDate READ currentDate WRITE setCurrentDate NOTIFY currentDateChanged)

    Q_PROPERTY(QString temp READ temp WRITE setTemp NOTIFY tempChanged)
    Q_PROPERTY(int triPos READ triPos WRITE setTriPos NOTIFY triPosChanged)
    Q_PROPERTY(QString status READ status WRITE setStatus NOTIFY statusChanged)

public:
    explicit DataInfo(QObject *parent = nullptr);

    QString currentTime() const;
    QString currentDate() const;

    QString temp() const;
    QString status() const;
    int triPos() const;


public slots:
    // Current time
    void setCurrentTime(QString currentTime);

    // Current date
    void setCurrentDate(QString currentDate);

    // Temp
    void setTemp(QString temp);

    // Status
    void setStatus(QString status);

    void setTriPos(int pos);

private:
    // Data Controller Object
    DataController *dataController;
    QTimer *timer_ls;

    QString m_currentTime;
    QString m_currentDate;

    QString m_temp;
    QString m_status;
    int m_tripos;

signals:
    void currentTimeChanged(QString);
    void currentDateChanged(QString);

    void tempChanged(QString);
    void statusChanged(QString);
    void triPosChanged(int);

private slots:
    void UpdateTime();
};

#endif // DATAINFO_H
