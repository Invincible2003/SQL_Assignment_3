-- ==========================================
-- MODERATE LEVEL (Basic Aggregations)
-- ==========================================

-- 1. Count the total number of athletes
SELECT COUNT(*) AS total_athletes
FROM athlete_events;

-- 2. Find the average age of all athletes
SELECT AVG(Age) AS average_age
FROM athlete_events;

-- 3. Find the maximum height recorded among athletes
SELECT MAX(Height) AS max_height
FROM athlete_events;

-- 4. Find the minimum weight of athletes
SELECT MIN(Weight) AS min_weight
FROM athlete_events;

-- 5. Count how many female athletes are in the dataset
SELECT COUNT(*) AS female_athletes
FROM athlete_events
WHERE Sex = 'F';

-- 6. Count the number of athletes who participated in the Summer season
SELECT COUNT(*) AS summer_athletes
FROM athlete_events
WHERE Season = 'Summer';

-- 7. Find the average weight of athletes
SELECT AVG(Weight) AS average_weight
FROM athlete_events;

-- 8. Count the number of distinct sports
SELECT COUNT(DISTINCT Sport) AS total_sports
FROM athlete_events;

-- 9. Find the youngest athlete age recorded
SELECT MIN(Age) AS youngest_age
FROM athlete_events;

-- 10. Find the oldest athlete age recorded
SELECT MAX(Age) AS oldest_age
FROM athlete_events;



-- ==========================================
-- INTERMEDIATE LEVEL (GROUP BY)
-- ==========================================

-- 11. Count the number of athletes per sport
SELECT Sport, COUNT(*) AS athlete_count
FROM athlete_events
GROUP BY Sport;

-- 12. Find the average age of athletes for each sport
SELECT Sport, AVG(Age) AS average_age
FROM athlete_events
GROUP BY Sport;

-- 13. Find the maximum height of athletes in each sport
SELECT Sport, MAX(Height) AS max_height
FROM athlete_events
GROUP BY Sport;

-- 14. Count the number of athletes from each country
SELECT Team, COUNT(*) AS athlete_count
FROM athlete_events
GROUP BY Team;

-- 15. Find the average weight of athletes grouped by sex
SELECT Sex, AVG(Weight) AS average_weight
FROM athlete_events
GROUP BY Sex;

-- 16. Find the minimum age of athletes in each Olympic year
SELECT Year, MIN(Age) AS youngest_age
FROM athlete_events
GROUP BY Year;

-- 17. Count how many medals were won by each country
SELECT Team, COUNT(Medal) AS medal_count
FROM athlete_events
WHERE Medal <> 'NA'
GROUP BY Team;

-- 18. Find the average height of athletes in each season
SELECT Season, AVG(Height) AS average_height
FROM athlete_events
GROUP BY Season;

-- 19. Find the maximum weight recorded for athletes in each sport
SELECT Sport, MAX(Weight) AS max_weight
FROM athlete_events
GROUP BY Sport;

-- 20. Count how many athletes participated each year
SELECT Year, COUNT(*) AS athlete_count
FROM athlete_events
GROUP BY Year;



-- ==========================================
-- ADVANCED LEVEL (GROUP BY + HAVING)
-- ==========================================

-- 21. Find sports where the average athlete age is greater than 30
SELECT Sport, AVG(Age) AS average_age
FROM athlete_events
GROUP BY Sport
HAVING AVG(Age) > 30;

-- 22. List teams that have more than 1000 athletes
SELECT Team, COUNT(*) AS athlete_count
FROM athlete_events
GROUP BY Team
HAVING COUNT(*) > 1000;

-- 23. Find sports where more than 500 athletes participated
SELECT Sport, COUNT(*) AS athlete_count
FROM athlete_events
GROUP BY Sport
HAVING COUNT(*) > 500;

-- 24. Find Olympic years where more than 2000 athletes participated
SELECT Year, COUNT(*) AS athlete_count
FROM athlete_events
GROUP BY Year
HAVING COUNT(*) > 2000;

-- 25. Find teams whose average athlete height is greater than 180 cm
SELECT Team, AVG(Height) AS avg_height
FROM athlete_events
GROUP BY Team
HAVING AVG(Height) > 180;

-- 26. Find sports where the maximum weight exceeds 120 kg
SELECT Sport, MAX(Weight) AS max_weight
FROM athlete_events
GROUP BY Sport
HAVING MAX(Weight) > 120;

-- 27. Find countries that won more than 100 medals
SELECT Team, COUNT(Medal) AS medal_count
FROM athlete_events
WHERE Medal <> 'NA'
GROUP BY Team
HAVING COUNT(Medal) > 100;

-- 28. Find sports where the average athlete weight is greater than 80 kg
SELECT Sport, AVG(Weight) AS avg_weight
FROM athlete_events
GROUP BY Sport
HAVING AVG(Weight) > 80;

-- 29. Find Olympic years where more than 100 medals were awarded
SELECT Year, COUNT(Medal) AS medal_count
FROM athlete_events
WHERE Medal <> 'NA'
GROUP BY Year
HAVING COUNT(Medal) > 100;

-- 30. Find teams where the average athlete age is greater than 28
SELECT Team, AVG(Age) AS avg_age
FROM athlete_events
GROUP BY Team
HAVING AVG(Age) > 28;
