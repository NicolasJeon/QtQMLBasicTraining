#pragma once

#include <QObject>
#include <QQmlEngine>

class Person : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(int shoeSize READ shoeSize WRITE setShoeSize NOTIFY shoeSizeChanged)
    QML_ELEMENT

public:
    explicit Person(QObject *parent = nullptr);

    QString name() const;
    int shoeSize() const;

    void setName(const QString& n);
    void setShoeSize(int ss);

Q_SIGNALS:
    void nameChanged();
    void shoeSizeChanged();

private:
    QString _name = "NoName";
    int _shoeSize = 260;
};

