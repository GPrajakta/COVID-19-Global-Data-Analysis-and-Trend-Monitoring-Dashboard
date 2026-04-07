-- Check total rows
SELECT COUNT(*) FROM covid_country_stats;

-- Check for NULL values in important columns
SELECT *
FROM covid_country_stats
WHERE Country_Region IS NULL
   OR TotalCases IS NULL
   OR TotalDeaths IS NULL;

-- Replace NULL values with 0
UPDATE covid_country_stats
SET TotalCases = 0
WHERE TotalCases IS NULL;

UPDATE covid_country_stats
SET TotalDeaths = 0
WHERE TotalDeaths IS NULL;

UPDATE covid_country_stats
SET TotalRecovered = 0
WHERE TotalRecovered IS NULL;

UPDATE covid_country_stats
SET ActiveCases = 0
WHERE ActiveCases IS NULL;

---- Check duplicate rows
SELECT * 
FROM (
	select *,
	ROW_number() OVER (
		partition by Country_Region,
    Continent,
    Population,
    TotalCases,
    NewCases,
    TotalDeaths,
    NewDeaths,
    TotalRecovered,
    NewRecovered,
    ActiveCases,
    Serious_Critical,
    Tot_Cases_Per_1M_Pop,
    Deaths_Per_1M_Pop,
    TotalTests,
    Tests_Per_1M_Pop,
    WHO_Region
		ORDER by id
	) AS row_num
	FROM covid_country_stats
)sub
where row_num > 1;

----- Remove duplicate rows
DELETE FROM covid_country_stats
WHERE id IN (
    SELECT id
    FROM (
        SELECT id,
               ROW_NUMBER() OVER (
                   PARTITION BY Country_Region,
                                TotalCases,
                                TotalDeaths,
                                TotalRecovered,
                                Population,
                                TotalTests
                   ORDER BY id
               ) AS rn
        FROM covid_country_stats
    ) t
    WHERE rn > 1
);

-- Check for negative values
SELECT *
FROM covid_country_stats
WHERE TotalCases < 0
   OR TotalDeaths < 0
   OR TotalRecovered < 0
   OR ActiveCases < 0;

-- Find blank country names
SELECT *
FROM covid_country_stats
WHERE TRIM(Country_Region) = '';

