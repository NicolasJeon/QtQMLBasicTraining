#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "cppmodel.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);



    QQmlApplicationEngine engine;

    CppModel model;

    QQmlContext* context = engine.rootContext();
    context->setContextProperty("cppModel", &model);

    const QUrl url(u"qrc:/CppListModel/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
