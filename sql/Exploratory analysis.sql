-- Total number of countries
SELECT COUNT(DISTINCT Country_Region) AS total_countries
FROM covid_country_stats;

-- Total number of continents
SELECT COUNT(DISTINCT Continent) AS total_continents
FROM covid_country_stats;

-- Total number of WHO regions
SELECT COUNT(DISTINCT WHO_Region) AS total_who_regions
FROM covid_country_stats;

---- Minimum and maximum total cases
SELECT 
    MIN(TotalCases) AS min_cases,
    MAX(TotalCases) AS max_cases
FROM covid_country_stats;

-- Minimum and maximum total deaths
SELECT 
    MIN(TotalDeaths) AS min_deaths,
    MAX(TotalDeaths) AS max_deaths
FROM covid_country_stats;

-- Average total cases, deaths, and recoveries
SELECT 
    ROUND(AVG(TotalCases), 2) AS avg_cases,
    ROUND(AVG(TotalDeaths), 2) AS avg_deaths,
    ROUND(AVG(TotalRecovered), 2) AS avg_recovered
FROM covid_country_stats;

-- Top 10 countries by total cases
SELECT Country_Region, TotalCases
FROM covid_country_stats
ORDER BY TotalCases DESC
LIMIT 10;

-- Top 10 countries by total deaths
SELECT Country_Region, TotalDeaths
FROM covid_country_stats
ORDER BY TotalDeaths DESC
LIMIT 10;

-- Top 10 countries by total recovered
SELECT Country_Region, TotalRecovered
FROM covid_country_stats
ORDER BY TotalRecovered DESC
LIMIT 10;

-- Top 10 countries by total recovered
SELECT Country_Region, TotalRecovered
FROM covid_country_stats
ORDER BY TotalRecovered DESC
LIMIT 10;

-- Top 10 countries by active cases
SELECT Country_Region, ActiveCases
FROM covid_country_stats
ORDER BY ActiveCases DESC
LIMIT 10;

-- Countries with highest death rate
SELECT 
    Country_Region,
    TotalCases,
    TotalDeaths,
    ROUND((TotalDeaths * 100.0 / TotalCases), 2) AS death_rate_percent
FROM covid_country_stats
WHERE TotalCases > 0
ORDER BY death_rate_percent DESC
LIMIT 10;

-- Countries with highest recovery rate
SELECT 
    Country_Region,
    TotalCases,
    TotalRecovered,
    ROUND((TotalRecovered * 100.0 / TotalCases), 2) AS recovery_rate_percent
FROM covid_country_stats
WHERE TotalCases > 0
ORDER BY recovery_rate_percent DESC
LIMIT 10;

-- Total global cases, deaths, recoveries, active cases
SELECT 
    SUM(TotalCases) AS global_cases,
    SUM(TotalDeaths) AS global_deaths,
    SUM(TotalRecovered) AS global_recovered,
    SUM(ActiveCases) AS global_active_cases
FROM covid_country_stats;

-- Cases and deaths by continent
SELECT 
    Continent,
    SUM(TotalCases) AS total_cases,
    SUM(TotalDeaths) AS total_deaths
FROM covid_country_stats
GROUP BY Continent
ORDER BY total_cases DESC;




