#ifndef WORKER_H
#define WORKER_H

#include <QThread>
#include <QDateTime>
#include <QtCore>

class Worker : public QThread
{
public:
    Worker(QObject *parent = nullptr);
    void run();

signals:
    void timeChanged(QString);
};

#endif // WORKER_H
