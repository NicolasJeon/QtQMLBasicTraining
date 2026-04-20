#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "DataObject.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QList<QObject*> dataList;
    dataList.append(new DataObject("Item 1", "red"));
    dataList.append(new DataObject("Item 2", "orange"));
    dataList.append(new DataObject("Item 3", "yellow"));
    dataList.append(new DataObject("Item 4", "green"));

    QQmlApplicationEngine engine;

    // Expose a QColor and a string to QML using QDeclarativeContext.
    QQmlContext* context = engine.rootContext();
    context->setContextProperty("myModel", QVariant::fromValue(dataList));

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}








