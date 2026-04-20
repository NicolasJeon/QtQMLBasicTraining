#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTranslator>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QTranslator tr;
    if (tr.load(":/i18n/app_fr_FR.qm")) {
        app.installTranslator(&tr);
    }

    QQmlApplicationEngine engine;
    const QUrl url(u"qrc:/StringTranslation/Main.qml"_qs);
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreationFailed,
        &app, []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
