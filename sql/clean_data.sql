CREATE TABLE state_occupation_data_clean AS 
SELECT
	st AS state,
	occ_title AS occupation,
	replace(nullif(tot_emp, '**'), ',', '') :: INT AS employee_count,
	replace(nullif(nullif(a_mean, '*'), '#'), ',', '') :: NUMERIC AS annual_mean_pay,
	replace(nullif(nullif(h_mean, '*'), '#'), ',', '') :: NUMERIC AS hourly_mean_pay
FROM state_occupation_data;

CREATE TABLE employment_projections_clean AS
SELECT 
	split_part(occupation_title,'*',1) AS occupation,
	replace(replace(nullif(median_annual_wage_2018,'N/A'), ',',''),'>=','') :: NUMERIC AS annual_median_pay_2018,
	typical_entry_level_education AS entry_level_education,
	work_experience_in_a_related_occupation AS work_experience,
	typical_on_the_job_training AS job_training 
FROM employment_projections;

CREATE TABLE public_four_year_in_state_tuition_and_fees_clean AS
SELECT 
	state,
	replace(replace(year_2019_20,'$',''),',','') :: INT AS year_2019_20
FROM public_four_year_in_state_tuition_and_fees ; 

CREATE TABLE public_two_year_in_district_tuition_and_fees_clean AS
SELECT 
	state,
	nullif(replace(replace(year_2019_20,'$',''),',',''),'N/A') :: INT AS year_2019_20
FROM public_two_year_in_district_tuition_and_fees ; 