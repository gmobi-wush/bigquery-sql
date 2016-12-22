#! /bin/bash

(bq rm -f userdata.groupedIdAppUserData || echo "userdata.groupedIdAppUserData does not exist") && \
cat groupedIdAppUserData.sql | bq query --nouse_legacy_sql --allow_large_results --destination_table 'userdata.groupedIdAppUserData'
