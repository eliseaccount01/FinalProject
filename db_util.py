import psycopg2

class db_util:
    def __init__(self):
        self.state_occ_pay = ''
        self.four_yr_data = ''
        self.two_yr_data = ''
        self.occupation_data = ''

        self.fetch_data()

    def fetch_data(self):
        conn = psycopg2.connect(dbname='college', host='localhost', user='postgres', password='mailbox8')

        # Open a cursor to perform database operations
        cur = conn.cursor()

        # Query the database and obtain data as Python objects
        # state, occupation, annual_mean_pay
        cur.execute("SELECT state, occupation, annual_mean_pay FROM state_occupation_data_clean;")
        self.state_occ_pay = cur.fetchall()
        # avg tuition per state for 2019-2020 4 year public colleges
        cur.execute("SELECT state, year_2019_20 FROM public_four_year_in_state_tuition_and_fees_clean;")
        self.four_yr_data = cur.fetchall()
        # avg tuition per state for 2019-2020 2 year public colleges
        cur.execute("SELECT state, year_2019_20 FROM public_two_year_in_district_tuition_and_fees_clean;")
        self.two_yr_data = cur.fetchall()
        # occupation, entry_level_education
        cur.execute("SELECT occupation, entry_level_education, annual_median_pay_2018 FROM employment_projections_clean;")
        self.occupation_data = cur.fetchall()

        # Close communication with the database
        cur.close()
        conn.close()
