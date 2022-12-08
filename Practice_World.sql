--Напишите запрос, который вернёт вам все записи из таблицы world.
SELECT * FROM world;

--Напишите запрос, который вернёт население Франции. Используйте команду WHERE
SELECT population FROM world
WHERE name='France';

--Напишите запрос, который вернёт записи следующих стран: Brazil, China, Russia. Используйте оператор IN.
SELECT * FROM world
WHERE name IN ('Brazil', 'China', 'Russia');

--Напишите запрос, который вернёт название и население следующих стран: Sweden, Norway, Denmark. Используйте оператор IN
SELECT name, population FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

--Напишите запрос, который вернёт название и площадь стран, удовлетворяющих следующим условиям: area от 250000 до 300000. Используйте оператор BETWEEN
SELECT name, area FROM world
WHERE area BETWEEN 250000 AND 300000;

--Напишите запрос, который вернёт название стран, где население более 1000000000. Используйте оператор WHERE.
SELECT name FROM world
WHERE population > 1000000000;

--Напишите запрос, который вернёт название стран и ВВП на душу населения (ВВП/население) тех стран, где население более 200000000. Используйте оператор WHERE.
SELECT name, gdp/population FROM world
WHERE population > 200000000;

--Напишите запрос, который вернёт колонки название стран (name) и население в миллионах тех стран, у которых континент South America
--Для того, чтобы получить население в миллионах, надо population разделить на 1000000.
SELECT name, population/1000000 FROM world
WHERE continent='South America';

--Напишите запрос, который вернёт страны, содержащих в названии слово United. Для того используйте оператор LIKE
SELECT * FROM world
WHERE name LIKE '%United%';

--Напишите запрос, который вернёт страны c площадью более 3000000 И население более 250000000
--Для того используйте оператор AND
SELECT * FROM world
WHERE area>3000000 AND population>250000000;

--Напишите запрос, который вернёт колонки название страны (name), население (population) и площадь (area), для стран c площадью более 3000000 ИЛИ с населением более 250000000
--Для того используйте оператор OR
SELECT name, population, area FROM world
WHERE area>3000000 OR population>250000000;

--Напишите запрос, который вернёт среднее число населения всех стран из таблицы world. Округлите значение до 2 знаков после запятой.
--Для того используйте оператор AVG и ROUND
SELECT ROUND (AVG(population), 2) FROM world;

--Напишите запрос, который вернёт список стран, у которых население больше, чем в Russia.
--Используйте вложенный запрос (SELECT in SELECT)
SELECT * FROM world
WHERE population > (SELECT population FROM world
                   WHERE name = 'Russia');
                   
--Напишите запрос, который вернёт список стран с ВВП больше, чем в United Kingdom.
--Используйте вложенный запрос (SELECT in SELECT)
SELECT * FROM world
WHERE gdp > (SELECT gdp FROM world
             WHERE name = 'United Kingdom');
             
--Напишите запрос, который вернёт список стран с тех же континентов, на которых находятся France и United States. Отсортируйте результат по названию стран (ORDER BY)
--Используйте вложенный запрос SELECT in SELECT
SELECT * FROM world
WHERE continent IN (SELECT continent FROM world
                    WHERE name IN ('France', 'United States'));
                    
--Напишите запрос, который вернёт список стран с населением больше, чем в Canada, но меньше, чем во France.
SELECT * FROM world
WHERE population>(SELECT population FROM world
                 WHERE name='Canada')
 AND population<(SELECT population FROM world
                 WHERE name='France');
ORDER BY name;

--Напишите запрос, который вернёт сумму всего населения из таблицы world. Для этого используйте оператор SUM
SELECT SUM(population) FROM world;

----Напишите запрос, который вернёт список всех континентов из таблицы. Континенты не должны повторяться. Для этого используйте оператор DISTINCT
SELECT DISTINCT continent FROM world;

--Напишите запрос, который вернёт сумму ВВП всех стран, где континент - Африка. Для этого используйте оператор SUM
SELECT SUM (gdp) FROM world
WHERE continent='Africa';

--Напишите запрос, который вернёт сумму всех стран с площадью больше 1000000. Для этого используйте оператор COUNT
SELECT COUNT (name) FROM world
WHERE area > 1000000;

--Напишите запрос, который вернёт сумму населения следующих стран: Франции, Германии и Андорры. Для этого используйте оператор SUM и IN
SELECT SUM (population) FROM world
WHERE name IN ('France', 'Germany', 'Andorra');

--Напишите запрос, который вернёт список континентов и сумму стран на каждом из них. Для этого используйте оператор COUNT и GROUP BY
SELECT continent, COUNT (name) FROM world
GROUP BY continent;

--Напишите запрос, который вернёт список континентов, где сумма населения больше 100000000.
--Для этого используйте оператор GROUP BY и HAVING
SELECT continent FROM world
GROUP BY continent
HAVING SUM(population)>10000000;
