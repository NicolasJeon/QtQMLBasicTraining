#ifndef CPPMODEL_H
#define CPPMODEL_H

#include <QAbstractListModel>
#include <QQuickItem>

class CppModel : public QAbstractListModel
{
    Q_OBJECT
    QML_ELEMENT
public:
    CppModel(QObject *parent = nullptr);

    enum Role {
        RoleName = Qt::UserRole,
        RolePoint
    };

    // QAbstractItemModel interface
public:
    int rowCount(const QModelIndex &parent) const;
    QVariant data(const QModelIndex &index, int role) const;

    // QAbstractItemModel interface
public:
    QHash<int, QByteArray> roleNames() const;

private:
    struct ItemData {
        QString name;
        int point = 0;
    };

    QVector<ItemData> _rawData;
};

#endif // CPPMODEL_H
