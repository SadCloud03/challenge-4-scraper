CREATE TABLE IF NOT EXISTS Categories(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    category_name TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Authors(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Books(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    price REAL,
    stars TEXT,
    stock TEXT,
    id_category INTEGER,
    FOREIGN KEY (id_category) REFERENCES categories(id)
    );

CREATE TABLE IF NOT EXISTS Books_authors(
    id_book INTEGER,
    id_author INTEGER,
    PRIMARY KEY (id_book, id_author),
    FOREIGN KEY (id_book) REFERENCES Books(id),
    FOREIGN KEY (id_author) REFERENCES Authors(id)
);