--У нас есть три таблицы, в которых хранится информация о фильмах:
-- movie: хранится информация о фильмах: идентификатор (id), название (title), год выпуска (yr), рейтинг (score), кол-во голосов (votes) и режиссер (director)
-- actor: хранится информация об актерах: идентификатор (id), имя (name).
-- casting: хранится информация для связи фильма с актерами: идентификатор фильма (movieid), идентификатор актера (actorid), роль актера (ord).
--*Если ord = 1 - значит актер игает главную роль

--Напишите запрос, который вернёт все фильмы за 1962 год.
SELECT * FROM movie
WHERE yr=1962;

--Напишите запрос, который вернёт год (yr) фильма под названием Citizen Kane .
SELECT yr FROM movie
WHERE title='Citizen Kane'

--Напишите запрос, который вернёт id, title и yr всех фильмов про Star Trek. Результаты должны быть отсортированы по году выпуска фильма.
--Используйте оператор LIKE.
SELECT id, title, yr FROM movie
WHERE title LIKE '%Star Trek%'
ORDER BY yr;

--Напишите запрос, который вернёт id актера Glenn Close
SELECT id FROM actor
WHERE name='Glenn Close';

--Напишите запрос, который вернёт id фильма Casablanca.
SELECT id FROM movie
WHERE title='Casablanca';

--Напишите запрос, который вернёт всех актеров из кастинга фильма Schindlers List.
--Используйте оператор JOIN для таблиц casting и actor.
--Bспользуйте параметр movieid = 7
SELECT name FROM casting 
JOIN actor
ON id=actorid
WHERE movieid = 7;

--Напишите запрос, который вернёт список актеров из кастинга на фильм Alien
--Используйте оператор JOIN два раза для таблиц casting и actor, а так же casting и movie
SELECT name FROM casting 
JOIN actor
ON actorid=actor.id
JOIN movie
ON movieid=movie.id
WHERE title = 'Alien'




