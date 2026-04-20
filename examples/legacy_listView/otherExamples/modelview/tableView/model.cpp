#include "model.h"

Book::Book(const QString &author, const QString &title, const QString &publisher,
           int year, const QString &isbn)
    : m_author(author)
    , m_title(title)
    , m_publisher(publisher)
    , m_year(year)
    , m_isbn(isbn)
{
}

QString Book::author() const
{
    return m_author;
}

QString Book::title() const
{
    return m_title;
}

QString Book::publisher() const
{
    return m_publisher;
}

int Book::year() const
{
    return m_year;
}

QString Book::isbn() const
{
    return m_isbn;
}


LibraryModel::LibraryModel(QObject *parent)
    : QAbstractTableModel(parent)
{

}

void LibraryModel::addBook(const Book &book)
{
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    m_books << book;
    endInsertRows();
}

int LibraryModel::rowCount(const QModelIndex & parent) const
{
    Q_UNUSED(parent)
    return m_books.count();
}

int LibraryModel::columnCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent)
    return 5; //  == number of attributes in Book
}

QVariant LibraryModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    Q_UNUSED(role);
    Q_UNUSED(orientation);

    switch (section) {
    case 0:
        return "Author";
    case 1:
        return "Title";
    case 2:
        return "Publisher";
    case 3:
        return "Year";
    case 4:
        return "ISBN";
    default:
        return QVariant();
    }
}

QVariant LibraryModel::data(const QModelIndex & index, int role) const
{
    Q_UNUSED(role);

    if (index.row() < 0 || index.row() >= m_books.count())
        return QVariant();

    const Book &book = m_books[index.row()];
    switch (index.column()) {
    case 0:
        return book.author();
    case 1:
        return book.title();
    case 2:
        return book.publisher();
    case 3:
        return book.year();
    case 4:
        return book.isbn();
    default:
        return QVariant();
    }
}

QHash<int, QByteArray> LibraryModel::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[Qt::DisplayRole] = "bookData";
    return roles;
}


