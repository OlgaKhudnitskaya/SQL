--У нас есть три таблицы, в которых хранится информация о ЧМ по футболу:
- game: хранится информация о расписаниях игр: идентификатор матча (id), дата игры (mdate), стадион (stadium), команда 1 (team1), команда 2 (team2).
- goal: хранится информация о голах за игру: идентификатор матча (matchid), идентификатор команды (teamid), игрок, забивщий гол (player), время гола (gtime).
- eteam: хранится информация о тренерах команд: идентификатор страны (id), название команды (teamname), тренер (coach).

----Напишите запрос, который вернёт вам все значения matchid и player из таблицы goal, у которых teamid = GER.
SELECT matchid, player FROM public.goal
WHERE teamid = 'GER';

--Напишите запрос, который вернёт id, stadium, team1, team2 с id = 1012 из таблицы game.
SELECT id, stadium, team1, team2 FROM public.game
WHERE id = 1012;

--Напишите запрос, который вернёт список player, teamid, stadium и mdate для всех голов немецкой (GER) команды
--Используйте оператор JOIN для таблиц game и goal.
SELECT player, teamid, stadium, mdate FROM public.game
JOIN public.goal
ON (id = matchid)
WHERE teamid = 'GER';

--Напишите запрос, который вернёт список игроков (player) и название стадиона (stadium), где игрок забил гол.
--Используйте оператор JOIN для таблиц game и goal.
SELECT player, stadium FROM public.game
JOIN public.goal
ON (id = matchid);

--Напишите запрос, который вернёт team1, team2, player, где имя игрока = Mario.
--Используйте оператор Like и JOIN.
SELECT team1, team2, player FROM public.game
JOIN public.goal 
ON (id = matchid)
WHERE player LIKE 'Mario%';

--Напишите запрос, который вернёт player, teamid, coach, gtime за первые 10 минут матча (gtime < 10).
--Используйте оператор JOIN для таблиц goal и eteam.
SELECT player, teamid, coach, gtime FROM public.goal
JOIN public.eteam
ON (id = teamid)
WHERE gtime < 10;

--Напишите запрос, который вернёт matchid, mdate и количество голов за каждый матч с участием Польши (POL)
--Используйте оператор JOIN для таблиц game и goal.
--Для подсчета голов используйсте оператор COUNT
SELECT matchid, mdate, COUNT (*) FROM public.game
JOIN public.goal
ON id=matchid
WHERE team1='POL' OR team2='POL'
GROUP BY matchid, mdate

--Напишите запрос, который вернёт названия matchid, mdate и количество голов за каждый матч, в котором забила гол сборная Германии (GER)
--Используйте оператор JOIN для таблиц goal и game.
--Для подсчета голов используйсте оператор COUNT
SELECT matchid, mdate, COUNT (*) FROM public.game
JOIN public.goal
ON id=matchid
WHERE teamid='GER'
GROUP BY matchid, mdate
