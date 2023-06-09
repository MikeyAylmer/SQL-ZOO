-- SQL ZOO QUIZ 1
-- Answer # 1
SELECT name, continent, population FROM world;
-- Answer # 2
SELECT name FROM world
WHERE population >= 200000000;
-- Answer # 3
SELECT name, gdp/population FROM world WHERE population >= 200000000;
-- Answer # 4
SELECT name, population/1000000 FROM world WHERE continent = 'South America';
-- Answer # 5
SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy');
-- Answr # 6
SELECT name FROM world WHERE name LIKE 'United%';
-- Answer # 7
SELECT name, population, area FROM world WHERE area > 3000000 OR population > 250000000;
-- Answer # 8
SELECT name, population, area FROM world WHERE area > 3000000 AND population < 250000000 OR area < 3000000 AND population > 250000000;
-- Answer # 9
SELECT name, population/1000000, gdp/10000000000 FROM world WHERE continent = 'South America';
-- Answer # 10
SELECT name, ROUND(gdp/population, -3) FROM world WHERE gdp > 1000000000000;
-- Answer # 11
SELECT name, capital FROM world WHERE LEN(name) = LEN(capital);
-- Answer # 12
SELECT name, capital
FROM world WHERE LEFT(name,1) = LEFT(capital,1) AND name <> capital;
-- Answer # 13
SELECT name
   FROM world
WHERE name LIKE 'B%'
  AND name NOT LIKE '%a%';

-- SQL ZOO SUM & COUNT QUIZ 2
-- Answer # 1
SELECT SUM(population)
FROM world;
-- Answer # 2
SELECT continent FROM world GROUP BY continent ;
-- Answer # 3
SELECT SUM(gdp) FROM world WHERE continent = 'Africa';
-- Answer # 4
SELECT COUNT(name) FROM world WHERE area >= 1000000;
-- Answer # 5
SELECT SUM(population) FROM world WHERE name = 'Estonia' OR name = 'Latvia' Or name = 'Lithuania';
-- Answer # 6
SELECT continent, COUNT(name) FROM world GROUP BY continent;
-- Answer # 7
SELECT continent, COUNT(name) FROM world WHERE population >= 10000000 GROUP BY continent;
-- Answer # 8
SELECT continent FROM world GROUP BY continent HAVING SUM(population) >= 100000000;

-- SQL ZOO SELECT within SELECT
-- Answer # 1
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name = 'Russia');
-- Answer # 2
SELECT name FROM world 
WHERE continent = 'Europe' 
AND gdp/population > 
(SELECT gdp/population from world WHERE name = 'United Kingdom');
-- Answer # 3
SELECT name, continent FROM world 
WHERE name LIKE '%Argentina%' 
OR name LIKE '%Australia%';

-- SQL ZOO JOIN QUIZ
-- Answer # 1
SELECT matchid, player
FROM goal g
JOIN eteam e
ON g.teamid = e.id
WHERE teamid = 'GER'
-- Answer # 2
SELECT id,stadium,team1,team2
  FROM game g
JOIN goal w
ON g.id = w.matchid
WHERE w.matchid = 1012;
-- Answer # 3


