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

    // Time
    QString getCurrentTime();

    // Date
    QString getCurrentDate();

    // Temp
    int getTemp(const int Temp);

    // Set-Get time digits
    void setHrFirstDigit(int value);
    int getHrFirstDigit() const;

    void setHrSecondDigit(int value);
    int getHrSecondDigit() const;

    void setScFirstDigit(int value);
    int getScFirstDigit() const;

    void setScSecondDigit(int value);
    int getScSecondDigit() const;

    void setGeneralSeconds(int value);
    int getGeneralSeconds() const;

    int calculateChron();

    int factor1 = 60;
    int factor2 = 600;
    int factor3 = 3600;
    int factor4 = 36000;

private:
    int m_hrFirstDigit;
    int m_hrSecondDigit;
    int m_scFirstDigit;
    int m_scSecondDigit;
    int m_generalSeconds;

};

#endif // DATACONTROLLER_H
