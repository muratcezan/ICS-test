#include "../hdr/mainwindow.h"

MainWindow::MainWindow(QQmlApplicationEngine *engine,QObject *parent) : QObject(parent)
{
    qmlRegisterType<DataInfo>("com.ics.datainfo",1,0,"DtInfo");

    const QUrl url(QStringLiteral("qrc:/qml/main.qml"));
    engine->load(url);
}
