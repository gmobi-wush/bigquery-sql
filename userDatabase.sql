WITH 
joinTable AS (
	SELECT
		appTable.identity AS identity1,
		iabTable.identity AS identity2,
		appTable.apps AS apps,
		iabTable.iabs AS iabs
	FROM
		`userdata.groupedIdAppUserData` AS appTable
	FULL JOIN
		`userdata.groupedIdIabUserData` AS iabTable
	ON appTable.identity = iabTable.identity
),
tb1 AS (
	SELECT identity1 AS identity, apps, iabs
	FROM joinTable
	WHERE identity1 IS NOT NULL
),
tb2 AS (
	SELECT identity2 AS identity, apps, iabs 
	FROM joinTable
	WHERE identity1 IS NULL
)
SELECT * FROM tb1 UNION ALL SELECT * FROM tb2
