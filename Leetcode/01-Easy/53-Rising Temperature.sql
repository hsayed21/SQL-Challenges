-- Solution 1:
select w1.id
from Weather W1, Weather W2
where W2.recordDate = DATEADD(day, -1, W1.recordDate) and W1.temperature > W2.temperature

-- Solution 2:
WITH WeatherCTE AS 
(
    SELECT
        w.*,
        LAG(w.temperature) OVER (ORDER BY w.recordDate) AS previous_temp,
        LAG(w.recordDate) OVER (ORDER BY w.recordDate) AS previous_date
    FROM
        Weather w
)
SELECT id 
FROM WeatherCTE
WHERE recordDate=DATEADD(day,1,previous_date) AND temperature > previous_temp