#ifndef DATACONTROLLER_H
#define DATACONTROLLER_H

#include <QDateTime>
#include <QObject>
#include <QString>

class DataController : public QObject
{
    Q_OBJECT
public:
    explicit DataController(QObject *parent = nullptr);

public slots:
    // Time
    QString getCurrentTime();

    // Date
    QString getCurrentDate();

    // Temp
    int getTemp(const int Temp);

private:

signals:

};

#endif // DATACONTROLLER_H
