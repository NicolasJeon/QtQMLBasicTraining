#include "PersonVvip.h"

PersonVvip::PersonVvip(QObject *parent)
    : QObject{parent}
{
}

QString PersonVvip::name() const
{
    return _name;
}

int PersonVvip::shoeSize() const
{
    return _shoeSize;
}

void PersonVvip::setName(const QString &n)
{
    if (_name != n) {
        _name = n;
        Q_EMIT nameChanged();
    }
}

void PersonVvip::setShoeSize(int ss)
{
    if (_shoeSize != ss) {
        _shoeSize = ss;
        Q_EMIT shoeSizeChanged();
    }
}
