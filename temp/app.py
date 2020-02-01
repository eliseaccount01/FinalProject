# Import Dependencies
import pandas as pd

stateOcc_df = pd.read_csv("Resources/all.csv")
stateOcc_df.head()
empProj_df = pd.read_csv("Resources/employment_ projections_cleaned.csv")
empProj_df.head()
occupations_df = empProj_df["occupation_title"]
type(occupations_df)
occupations_df.to_json(orient="values")
pubFourTuition_df = pd.read_csv("Resources/public_four_year_in_state_tuition_and_fees.clean.csv")
pubFourTuition_df.head()
pubTwoTuition_df = pd.read_csv("Resources/public_two_year_in_district_tuition_and_fees_cleaned.csv")
state_df = pubTwoTuition_df["state"]
state_df
