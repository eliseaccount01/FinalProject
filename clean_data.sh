#!/bin/bash

psql --host=localhost --user=postgres -c "DROP DATABASE IF EXISTS college"
psql --host=localhost --user=postgres -c "CREATE DATABASE college"
psql --host=localhost --user=postgres --dbname=college -f sql/create_schema.sql
psql --host=localhost --user=postgres --dbname=college -c "\copy state_occupation_data from 'resources/state_occupation_data.csv' with DELIMITER ',' CSV HEADER"
psql --host=localhost --user=postgres --dbname=college -c "\copy employment_projections from 'resources/employment_projections.csv' with DELIMITER ',' CSV HEADER"
psql --host=localhost --user=postgres --dbname=college -c "\copy public_four_year_in_state_tuition_and_fees from 'resources/public_four_year_in_state_tuition_and_fees.csv' with DELIMITER ',' CSV HEADER"
psql --host=localhost --user=postgres --dbname=college -c "\copy public_two_year_in_district_tuition_and_fees from 'resources/public_two_year_in_district_tuition_and_fees.csv' with DELIMITER ',' CSV HEADER"
psql --host=localhost --user=postgres --dbname=college -f sql/clean_data.sql
psql --host=localhost --user=postgres --dbname=college -c "\copy state_occupation_data_clean to 'resources/state_occupation_data_clean.csv' with DELIMITER ',' CSV HEADER"
psql --host=localhost --user=postgres --dbname=college -c "\copy employment_projections_clean to 'resources/employment_projections_clean.csv' with DELIMITER ',' CSV HEADER"
psql --host=localhost --user=postgres --dbname=college -c "\copy public_four_year_in_state_tuition_and_fees_clean to 'resources/public_four_year_in_state_tuition_and_fees_clean.csv' with DELIMITER ',' CSV HEADER"
psql --host=localhost --user=postgres --dbname=college -c "\copy public_two_year_in_district_tuition_and_fees_clean to 'resources/public_two_year_in_district_tuition_and_fees_clean.csv' with DELIMITER ',' CSV HEADER"
