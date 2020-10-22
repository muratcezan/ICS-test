#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDebug>

#include "hdr/datainfo.h"

class MainWindow : public QObject
{
    Q_OBJECT
public:
    explicit MainWindow(QQmlApplicationEngine *engine, QObject *parent = nullptr);

signals:

};

#endif // MAINWINDOW_H
