#include <QPen>
#include <QPainter>
#include "PieChart.h"

PieChart::PieChart(QQuickItem *parent)
    : QQuickPaintedItem(parent)
{
}

QColor PieChart::color() const
{
    return _color;
}

void PieChart::setColor(const QColor &c)
{
    if (_color != c) {
        _color = c;
        update();
        Q_EMIT colorChanged();

        qDebug() << Q_FUNC_INFO << "color changed to " << c;
    }
}

void PieChart::paint(QPainter *painter)
{
    painter->setPen(QPen(_color, 2));
    painter->setRenderHint(QPainter::Antialiasing, true);
    switch(m_style) {
    case StyleBorderOnly:
        painter->setBrush(QBrush(Qt::NoBrush));
        break;
    case StyleSolidFill:
        painter->setBrush(QBrush(_color));
        break;
    case StylePattern:
        painter->setBrush(QBrush(_color, Qt::BDiagPattern));
        break;
    }
    painter->drawPie(boundingRect(), 90 * 16, 290 * 16);
}

int PieChart::style() const
{
    return m_style;
}

void PieChart::setStyle(int newStyle)
{
    if (m_style == newStyle)
        return;
    m_style = newStyle;
    update();
    emit styleChanged();
}
