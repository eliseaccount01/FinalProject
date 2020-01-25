DROP TABLE IF EXISTS degree_salaray;
DROP TABLE IF EXISTS trade_jobs_info;

CREATE TABLE degree_salaray(
    undergraduate_major VARCHAR PRIMARY KEY,
    starting_median_salary FLOAT,
    mid_career_median_salary FLOAT,
    percent_change_from_starting_to_mid_career_salary FLOAT,
    mid_career_10th_percentile_salary FLOAT,
    mid_career_25th_percentile_salary FLOAT,
    mid_career_75th_percentile_salary FLOAT,
    mid_career_90th_percentile_salary FLOAT
);

CREATE TABLE trade_jobs_info(
    job VARCHAR PRIMARY KEY,
    experience VARCHAR,
    avg_salary INT,
    education VARCHAR
);

