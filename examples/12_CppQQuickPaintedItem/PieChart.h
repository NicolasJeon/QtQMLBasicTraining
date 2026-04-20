#pragma once

#include <QQuickPaintedItem>
#include <QQuickItem>

class PieChart : public QQuickPaintedItem
{
    Q_OBJECT
    Q_PROPERTY(QColor color READ color WRITE setColor NOTIFY colorChanged)
    Q_PROPERTY(int style READ style WRITE setStyle NOTIFY styleChanged FINAL)
    QML_ELEMENT
    Q_ENUMS(Style)

public:
    explicit PieChart(QQuickItem* parent = nullptr);

    enum Style{
        StyleBorderOnly,
        StyleSolidFill,
        StylePattern
    };

    QColor color() const;
    void setColor(const QColor &c);

    void paint(QPainter *painter);

    int style() const;
    void setStyle(int newStyle);

Q_SIGNALS:
    void colorChanged();

    void styleChanged();

private:
    QColor _color;
    int m_style;
};

