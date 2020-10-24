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

    Q_PROPERTY(int chronHrFirstDgt READ chronHrFirstDgt WRITE setChronHrFirstDgt NOTIFY chronHrFirstDgtChanged)
    Q_PROPERTY(int chronHrSecondDgt READ chronHrSecondDgt WRITE setChronHrSecondDgt NOTIFY chronHrSecondDgtChanged)
    Q_PROPERTY(int chronScFirstDgt READ chronScFirstDgt WRITE setChronScFirstDgt NOTIFY chronScFirstDgtChanged)
    Q_PROPERTY(int chronScSecondDgt READ chronScSecondDgt WRITE setChronScSecondDgt NOTIFY chronScSecondDgtChanged)

    Q_PROPERTY(bool ovenStatus READ ovenStatus WRITE setOvenStatus NOTIFY ovenStatusChanged)

public:
    explicit DataInfo(QObject *parent = nullptr);

    QString currentTime() const;
    QString currentDate() const;

    QString temp() const;
    QString status() const;
    int triPos() const;

    int chronHrFirstDgt() const;
    int chronHrSecondDgt() const;
    int chronScFirstDgt() const;
    int chronScSecondDgt() const;

    bool ovenStatus() const;

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
    void setChronHrFirstDgt(int value);
    void setChronHrSecondDgt(int value);
    void setChronScFirstDgt(int value);
    void setChronScSecondDgt(int value);

    void setOvenStatus(bool status);

private:
    // Data Controller Object
    DataController *dataController;
    QTimer *timer_ls;
    QTimer *timerChron;

    QString m_currentTime;
    QString m_currentDate;

    QString m_temp;
    QString m_status;
    int m_tripos;

    int m_chronHrFirstDgt;
    int m_chronHrSecondDgt;
    int m_chronScFirstDgt;
    int m_chronScSecondDgt;

    bool m_ovenStatus;
signals:
    void currentTimeChanged(QString);
    void currentDateChanged(QString);

    void tempChanged(QString);
    void statusChanged(QString);
    void triPosChanged(int);

    void chronHrFirstDgtChanged(int);
    void chronHrSecondDgtChanged(int);
    void chronScFirstDgtChanged(int);
    void chronScSecondDgtChanged(int);

    void ovenStatusChanged(bool);

private slots:
    void UpdateTime();
    void UpdateDate();
    void ChronTimer();

};

#endif // DATAINFO_H
