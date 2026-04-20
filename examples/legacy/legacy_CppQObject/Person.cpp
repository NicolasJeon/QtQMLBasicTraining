#include "Person.h"

Person::Person(QObject *parent)
    : QObject{parent}
{
}

QString Person::name() const
{
    return _name;
}

int Person::shoeSize() const
{
    return _shoeSize;
}

void Person::setName(const QString &n)
{
    if (_name != n) {
        _name = n;
        Q_EMIT nameChanged();
    }
}

void Person::setShoeSize(int ss)
{
    if (_shoeSize != ss) {
        _shoeSize = ss;
        Q_EMIT shoeSizeChanged();
    }
}

type Person::addd() const
{
    return m_addd;
}

void Person::setAddd(const type &newAddd)
{
    if (m_addd == newAddd)
        return;
    m_addd = newAddd;
    emit adddChanged();
}
