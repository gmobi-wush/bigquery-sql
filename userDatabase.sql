

SELECT
	identity,
	STRING_AGG(value, ",") AS value,
	SUM(num) AS num
FROM `userdata.groupedIdAppUserData`
GROUP BY identity
