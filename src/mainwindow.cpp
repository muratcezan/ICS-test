#include "../hdr/mainwindow.h"
#include "../hdr/datainfo.h"


MainWindow::MainWindow(QQmlApplicationEngine *engine,QObject *parent) : QObject(parent)
{

    dataInfo = new DataInfo;
    ctx = engine->rootContext();

    ctx->setContextProperty("dataInfo", dataInfo->GetData());


    const QUrl url(QStringLiteral("qrc:/qml/main.qml"));
    engine->load(url);
}
