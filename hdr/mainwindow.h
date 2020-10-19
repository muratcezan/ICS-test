#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QDebug>

class MainWindow : public QObject
{
    Q_OBJECT
public:
    explicit MainWindow(QQmlApplicationEngine *engine, QObject *parent = nullptr);

    QQmlContext *ctx;

signals:

};

#endif // MAINWINDOW_H
