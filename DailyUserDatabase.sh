#! /bin/bash

(bq rm -f userdata.groupedIdAppUserData || echo "userdata.groupedIdAppUserData does not exist") && \
(cat groupedIdAppUserData.sql | bq query --nouse_legacy_sql --allow_large_results --destination_table 'userdata.groupedIdAppUserData' --format none) && \
(bq rm -f userdata.groupedIdIabUserData || echo "userdata.groupedIdIabUserData does not exist") && \
(cat groupedIdIabUserData.sql | bq query --nouse_legacy_sql --allow_large_results --destination_table 'userdata.groupedIdIabUserData' --format none) && \
(bq rm -f userdata.userDatabase || echo "userdata.userDatabase does not exist") && \
(cat userDatabase.sql | bq query --nouse_legacy_sql --allow_large_results --destination_table 'userdata.userDatabase' --format none)
