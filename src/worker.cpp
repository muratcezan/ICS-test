#include <QtCore>
#include <QDebug>

#include "../hdr/worker.h"

Worker::Worker(QObject *parent) : QThread(parent)
{
}

void Worker::run()
{
    qDebug() << "4";
}
