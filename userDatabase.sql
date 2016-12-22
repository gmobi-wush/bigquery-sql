SELECT
	identity,
	appTable.apps AS apps,
	iabTable.iabs AS iabs
FROM
	`userdata.groupedIdAppUserData` AS appTable
FULL JOIN
	`userdata.groupedIdIabUserData` AS iabTable
ON appTable.identity = iabTable.identity
