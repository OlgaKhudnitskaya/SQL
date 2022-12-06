--Напишите запрос, который вернёт вам все записи из таблицы world.
SELECT * FROM world

--Напишите запрос, который вернёт население Франции. Используйте команду WHERE
SELECT population FROM world
WHERE name='France'

--Напишите запрос, который вернёт записи следующих стран: Brazil, China, Russia. Используйте оператор IN.
SELECT * FROM world
WHERE name IN ('Brazil', 'China', 'Russia')

--Напишите запрос, который вернёт название и население следующих стран: Sweden, Norway, Denmark. Используйте оператор IN
SELECT name, population FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark')

--Напишите запрос, который вернёт название и площадь стран, удовлетворяющих следующим условиям: area от 250000 до 300000. Используйте оператор BETWEEN
SELECT name, area FROM world
WHERE area BETWEEN 250000 AND 300000

--Напишите запрос, который вернёт название стран, где население более 1000000000. Используйте оператор WHERE.
SELECT name FROM world
WHERE population > 1000000000

--Напишите запрос, который вернёт название стран и ВВП на душу населения (ВВП/население) тех стран, где население более 200000000. Используйте оператор WHERE.
SELECT name, gdp/population FROM world
WHERE population > 200000000
