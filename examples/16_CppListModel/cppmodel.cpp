#include "cppmodel.h"
#include <QRandomGenerator>

CppModel::CppModel(QObject *parent) : QAbstractListModel(parent)
{
    _rawData.append({ .name = "Marine",  .point = 23 });
    _rawData.append({ .name = "Firebat", .point = 23 });
    _rawData.append({ .name = "SCV",     .point = 23 });
    _rawData.append({ .name = "Medic",   .point = 33 });
    _rawData.append({ .name = "Tank",    .point = 34 });
    _rawData.append({ .name = "Vulture", .point = 35 });
    _rawData.append({ .name = "Marine",  .point = 23 });
    _rawData.append({ .name = "Firebat", .point = 23 });
    _rawData.append({ .name = "SCV",     .point = 23 });
    _rawData.append({ .name = "Medic",   .point = 33 });
    _rawData.append({ .name = "Tank",    .point = 34 });
    _rawData.append({ .name = "Vulture", .point = 35 });
}

int CppModel::rowCount(const QModelIndex &parent) const
{
    return _rawData.count();
}

QVariant CppModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    const ItemData item = _rawData.value(index.row());

    switch (role) {
    case RoleName:
        return item.name;

    case RolePoint:
        return item.point;

    default:
        break;
    }

    return QVariant();
}

QHash<int, QByteArray> CppModel::roleNames() const
{
    return QHash<int, QByteArray> {
        { RoleName, "name" }, // 0
        { RolePoint, "point"} // 1
    };
}
