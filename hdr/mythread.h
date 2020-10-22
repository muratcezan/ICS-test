#ifndef MYTHREAD_H
#define MYTHREAD_H

#include <QObject>
#include <QThread>

#include "datacontroller.h"
#include "datainfo.h"


class MyThread : public QObject
{
    Q_OBJECT
public:
    explicit MyThread(QObject *parent = nullptr);
    DataController *dControl;
    DataInfo *dInfo;

signals:

};

#endif // MYTHREAD_H
