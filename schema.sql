DROP TABLE IF EXISTS life_expectancy;
DROP TABLE IF EXISTS world_happiness;

CREATE TABLE life_expectancy(
    Country VARCHAR PRIMARY KEY,
    Year INT,
    Status VARCHAR,
    Life_Expectancy FLOAT,
    Adult_Mortality INT,
    infant_Deaths INT,
    Alcohol FLOAT,
    Percentage_Exp FLOAT,
    HepatitisB INT,
    Measles INT,
    BMI FLOAT, 
    Under_Five_Deaths INT,
    Polio INT, 
    Total_Exp FLOAT,
    Diphtheria INT,
    HIV_AIDS FLOAT,
    GDP FLOAT,
    Population INT ,
    Thinness_1to19_Years FLOAT, 
    Thinness_5to9_Years FLOAT,
    Income_Composition_Of_Resources FLOAT,
    Schooling FLOAT
);

CREATE TABLE world_happiness(
    Country VARCHAR PRIMARY KEY,
    Region VARCHAR,
    Happiness_Rank INT,
    Happiness_Score FLOAT,
    Standard_Error FLOAT,
    GDP_per_Capita FLOAT, 
    Family FLOAT, 
    Life_Expectancy FLOAT, 
    Freedom FLOAT, 
    Government_Corruption FLOAT, 
    Generosity FLOAT, 
    Dystopia_Residual FLOAT
);