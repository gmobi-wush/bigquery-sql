WITH 
	expandedUserData AS (
		SELECT
			identity,
			app
		FROM
			`mlmsg.*` AS src
		CROSS JOIN UNNEST(src.app) AS app
	),
	groupedIdAppUserData AS (
		SELECT
			identity,
			app,
			COUNT(*) AS num,
			CONCAT(app, "=", CAST(COUNT(*) AS STRING)) AS value
		FROM expandedUserData
		GROUP BY identity, app
	)
SELECT * FROM groupedIdAppUserData
