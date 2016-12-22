#! /bin/bash

cat groupedIdAppUserData.sql | bq query --nouse_legacy_sql --allow_large_results --destination_table 'userdata.groupedIdAppUserData'
