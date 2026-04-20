#ifndef DATAOBJECT_H
#define DATAOBJECT_H

#include <QObject>

class DataObject : public QObject {
    Q_PROPERTY(QString name READ name WRITE setName NOTIFY nameChanged FINAL)
    Q_PROPERTY(QString itemColor READ itemColor WRITE setItemColor NOTIFY itemColorChanged FINAL)
    Q_OBJECT

public:
    DataObject(QString name, QString itemColor, QObject *parent= nullptr) : QObject(parent) {
        setName(name);
        setItemColor(itemColor);
    }
    QString name() const;
    void setName(const QString &newName);

    QString itemColor() const;
    void setItemColor(const QString &newItemColor);

signals:
    void nameChanged();
    void itemColorChanged();

private:
    QString m_name;
    QString m_itemColor;
};

inline QString DataObject::itemColor() const
{
    return m_itemColor;
}

inline void DataObject::setItemColor(const QString &newItemColor)
{
    if (m_itemColor == newItemColor)
        return;
    m_itemColor = newItemColor;
    emit itemColorChanged();
}

inline QString DataObject::name() const
{
    return m_name;
}

inline void DataObject::setName(const QString &newName)
{
    if (m_name == newName)
        return;
    m_name = newName;
    emit nameChanged();
}
#endif // DATAOBJECT_H
