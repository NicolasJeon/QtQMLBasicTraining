#include <QAbstractTableModel>
#include <QStringList>

class Book
{
public:
    Book(const QString &author, const QString &title, const QString &publisher,
         int year, const QString &isbn);

    QString author() const;
    QString title() const;
    QString publisher() const;
    int year() const;
    QString isbn() const;

private:
    QString m_author;
    QString m_title;
    QString m_publisher;
    int m_year;
    QString m_isbn;
};

class LibraryModel : public QAbstractTableModel
{
    Q_OBJECT
public:
    explicit LibraryModel(QObject *parent = nullptr);

    int rowCount(const QModelIndex & parent = QModelIndex()) const;
    int columnCount(const QModelIndex & parent = QModelIndex()) const;

    QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const;
    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;

    void addBook(const Book& book);

protected:
    QHash<int, QByteArray> roleNames() const;

private:
    QList<Book> m_books;
};


