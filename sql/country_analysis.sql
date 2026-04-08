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
