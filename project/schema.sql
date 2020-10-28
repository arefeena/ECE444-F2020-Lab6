DROP TABLE IF EXISTS entries;
CREATE TABLE entries (
    id INTEGER PRIMARY key autoincrement,
    title text NOT NULL,
    text text NOT NULL
);