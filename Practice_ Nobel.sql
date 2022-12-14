-- Напишите запрос, который вернёт вам все записи из таблицы nobel.
SELECT * FROM nobel;

-- Напишите запрос, который вернёт Нобелевские премии за 1950 год
SELECT * FROM nobel
WHERE year = 1950;

-- Напишите запрос, который вернёт премии по литературе за 1960 год. Используйте оператор AND.
SELECT * FROM nobel
WHERE subject = 'Literature'  AND year = 1960;

-- Напишите запрос, который вернёт год (year) и область в науке (subject) для премии, которую выиграл Albert Einstein.
SELECT year, subject  FROM nobel
WHERE winner = 'Albert Einstein';

-- Напишите запрос, который вернёт всех призеров в области Literature с 1980 по 1989 включительно
SELECT * FROM nobel
WHERE subject = 'Literature' AND 
year BETWEEN  1980 AND 1989;

--  Напишите запрос, который вернёт премии только следующих победителей: Theodore Roosevelt, Woodrow Wilson, Jimmy Carter, Barack Obama
--Используйте оператор IN.
SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

-- Напишите запрос, который вернёт всех победителей с именем John
--Используйте оператор LIKE.
SELECT * FROM nobel
WHERE winner LIKE 'John%';

-- Напишите запрос, который вернёт победителя по Physics за 1901 и победителя по Chemistry за 1950
SELECT * FROM nobel
WHERE subject='Physics' AND year=1901
OR subject='Chemistry' AND year=1950 ;

--  Напишите запрос, который вернёт премии за 1901 год, исключая Chemistry и Medicine
--Для того используйте оператор NOT IN
SELECT * FROM nobel
WHERE year=1901
AND subject NOT IN ('Chemistry', 'Medicine');

-- Напишите запрос, который вернёт премии по Medicine до 1910 года (не включая 1910) и по Literature после 1949 года (не включая)
SELECT * FROM nobel
WHERE subject='Medicine' AND year<1910
OR subject='Literature' AND year>1949;

-- Напишите запрос, который вернёт всех лауреатов премии за 1901 год. Отсортируйте результат по именам победителей в обратном порядке.
--Используйте функцию ORDER BY
SELECT * FROM nobel
WHERE year=1901
ORDER BY winner DESC;
