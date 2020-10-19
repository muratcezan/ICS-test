#include "../hdr/mainwindow.h"

MainWindow::MainWindow(QQmlApplicationEngine *engine,QObject *parent) : QObject(parent)
{
    ctx = engine->rootContext();
}
