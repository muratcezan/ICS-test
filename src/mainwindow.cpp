#include "../hdr/mainwindow.h"

MainWindow::MainWindow(QQmlApplicationEngine *engine,QObject *parent) : QObject(parent)
{

    dataInfo = new DataInfo;

    ctx = engine->rootContext();
    ctx_update = engine->rootContext();
    ctx->setContextProperty("dataInfo", dataInfo->GetData());
    ctx->setContextProperty("dataUpdate",dataInfo);

    const QUrl url(QStringLiteral("qrc:/qml/main.qml"));
    engine->load(url);
}
