#include "model.h"

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char ** argv)
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    LibraryModel model;
    for (int i=1; i <= 100; i++) {
        model.addBook(Book(QString("Author %1").arg(i), QString("Title %1").arg(i),
                           QString("Publisher %1").arg(i), 1900 + i, QString("ISBN %1").arg(i)));
    }

    QQmlContext *context = engine.rootContext();
    context->setContextProperty("myModel", &model);

    engine.load(QUrl(QStringLiteral("qrc:/view.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}

