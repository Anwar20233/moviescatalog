
-- إنشاء الجداول

CREATE TABLE Directors (
    director_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE Genres (
    genre_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE Movies (
    movie_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    release_year INTEGER,
    director_id INTEGER,
    genre_id INTEGER,
    FOREIGN KEY (director_id) REFERENCES Directors(director_id),
    FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)
);

CREATE TABLE Ratings (
    rating_id INTEGER PRIMARY KEY,
    movie_id INTEGER,
    rating_value REAL,
    reviewer TEXT,
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id)
);

-- إدخال بيانات تجريبية

INSERT INTO Directors (director_id, name) VALUES
(1, 'Christopher Nolan'),
(2, 'Steven Spielberg'),
(3, 'Martin Scorsese');

INSERT INTO Genres (genre_id, name) VALUES
(1, 'Action'),
(2, 'Drama'),
(3, 'Sci-Fi');

INSERT INTO Movies (movie_id, title, release_year, director_id, genre_id) VALUES
(1, 'Inception', 2010, 1, 3),
(2, 'The Dark Knight', 2008, 1, 1),
(3, 'Jurassic Park', 1993, 2, 3),
(4, 'Schindler's List', 1993, 2, 2),
(5, 'The Irishman', 2019, 3, 2);

INSERT INTO Ratings (rating_id, movie_id, rating_value, reviewer) VALUES
(1, 1, 8.8, 'User1'),
(2, 2, 9.0, 'User2'),
(3, 3, 8.1, 'User3'),
(4, 4, 8.9, 'User4'),
(5, 5, 7.9, 'User5');
