TRUNCATE life_expectancy cascade;
TRUNCATE world_happiness cascade;

\COPY life_expectancy FROM 'resources/.csv' csv delimiter ',' header;
\COPY world_happiness (Country, Region, Happiness Rank, Happiness Score, Standard Error, Economy (GDP per Capita), Family, Health (Life Expectancy), Freedom, Trust (Government Corruption), Generosity, Dystopia Residua) FROM 'resources/world_happiness_2015.csv' csv delimiter ',' header;