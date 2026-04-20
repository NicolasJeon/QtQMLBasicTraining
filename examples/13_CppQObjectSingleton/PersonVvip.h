#pragma once

#include <QObject>
#include <QQmlEngine>

class PersonVvip : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged)
    Q_PROPERTY(int shoeSize READ shoeSize WRITE setShoeSize NOTIFY shoeSizeChanged)
    QML_ELEMENT
    QML_SINGLETON

public:
    explicit PersonVvip(QObject *parent = nullptr);

    QString name() const;
    int shoeSize() const;

    void setName(const QString& n);
    void setShoeSize(int ss);

Q_SIGNALS:
    void nameChanged();
    void shoeSizeChanged();

private:
    QString _name = "Bob as VVIP";
    int _shoeSize = 260;
};
