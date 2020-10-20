#ifndef DATACONTROLLER_H
#define DATACONTROLLER_H

#include <QObject>
#include <QString>
#include <QDateTime>

class DataController : public QObject
{
    Q_OBJECT
public:
    explicit DataController(QObject *parent = nullptr);

    // Time
    QString getCurrentTime();

    // Temp
    int getTemp(const int Temp);
private:

signals:

};

#endif // DATACONTROLLER_H
