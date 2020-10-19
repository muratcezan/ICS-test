#ifndef DATAINFO_H
#define DATAINFO_H

#include <QObject>
#include <QQmlPropertyMap>
#include <QString>
#include <QDebug>

class DataInfo : public QObject
{
    Q_OBJECT

private:
    QQmlPropertyMap *dataItem;
public:
    explicit DataInfo(QObject *parent = nullptr);

    QQmlPropertyMap *GetData() const { return dataItem; }

    void setStatus(const QString Status);
    QString getStatus();

signals:

};

#endif // DATAINFO_H
