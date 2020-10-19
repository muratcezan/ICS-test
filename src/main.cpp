#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include "hdr/mainwindow.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    MainWindow *Wind = new MainWindow(&engine);

    return app.exec();
}
