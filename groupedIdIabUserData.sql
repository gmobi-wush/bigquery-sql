WITH 
	expandedUserData AS (
		SELECT
			identity,
			iab
		FROM
			`mlmsg.*` AS src
		CROSS JOIN UNNEST(src.iab) AS iab
	)
SELECT
  identity,
  STRING_AGG(DISTINCT iab) AS iabs
FROM expandedUserData
GROUP BY identity
