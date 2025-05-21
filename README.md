# 🎬 Movie Catalog Database / قاعدة بيانات سجل أفلام

## 📌 Description / الوصف

This project is a simple SQL-based movie catalog system that allows users to manage and query data related to movies, directors, genres, and ratings.

يهدف هذا المشروع إلى إنشاء نظام بسيط لإدارة بيانات الأفلام باستخدام SQL، ويشمل معلومات عن الأفلام، المخرجين، التصنيفات، والتقييمات.

---

## 🧱 Database Structure / هيكل قاعدة البيانات

- **Directors / المخرجين**: Stores director information.
- **Genres / التصنيفات**: Stores movie genres.
- **Movies / الأفلام**: Stores movie details including title, release year, director, and genre.
- **Ratings / التقييمات**: Stores ratings given to movies by reviewers.

---

## 🧪 Sample Queries / استعلامات تجريبية

```sql
-- Get top-rated movies / أعلى الأفلام تقييمًا
SELECT title, rating_value
FROM Movies
JOIN Ratings ON Movies.movie_id = Ratings.movie_id
ORDER BY rating_value DESC;

-- Get all movies by a specific director / جميع أفلام مخرج معين
SELECT title, release_year
FROM Movies
JOIN Directors ON Movies.director_id = Directors.director_id
WHERE Directors.name = 'Christopher Nolan';

-- Get average rating per genre / متوسط التقييم لكل تصنيف
SELECT Genres.name, AVG(rating_value) AS avg_rating
FROM Movies
JOIN Ratings ON Movies.movie_id = Ratings.movie_id
JOIN Genres ON Movies.genre_id = Genres.genre_id
GROUP BY Genres.name;
```

---

## ▶️ How to Use / كيفية الاستخدام

1. Run the `movie_catalog.sql` script in your preferred SQL environment.
2. Use the sample queries to explore the data.

1. شغل ملف `movie_catalog.sql` في بيئة SQL التي تفضلها.
2. استخدم الاستعلامات التجريبية لاستكشاف البيانات.

---

## 📁 Files Included / الملفات المرفقة

- `movie_catalog.sql`: Contains schema and sample data.
- `README.md`: This bilingual documentation.

---

## 🧑‍💻 Author / المؤلف

Anwar Alotaibi

