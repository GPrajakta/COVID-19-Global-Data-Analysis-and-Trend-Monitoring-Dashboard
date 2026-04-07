CREATE TABLE country_wise (
    country_region VARCHAR(100),
    confirmed BIGINT,
    deaths BIGINT,
    recovered BIGINT,
    active BIGINT,
    new_cases BIGINT,
    new_deaths BIGINT,
    new_recovered BIGINT,
    deaths_per_100_cases DECIMAL(10,2),
    recovered_per_100_cases DECIMAL(10,2),
    deaths_per_100_recovered DECIMAL(10,2),
    confirmed_last_week BIGINT,
    one_week_change BIGINT,
    one_week_percent_increase DECIMAL(10,2),
    who_region VARCHAR(100)
);

CREATE TABLE covid_complete_data (
    province_state VARCHAR(150),
    country_region VARCHAR(100),
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6),
    report_date DATE,
    confirmed BIGINT,
    deaths BIGINT,
    recovered BIGINT,
    active BIGINT,
    who_region VARCHAR(100)
);

CREATE TABLE covid_daywise_data (
    report_date DATE,
    confirmed BIGINT,
    deaths BIGINT,
    recovered BIGINT,
    active BIGINT,
    new_cases BIGINT,
    new_deaths BIGINT,
    new_recovered BIGINT,
    deaths_per_100_cases DECIMAL(10,2),
    recovered_per_100_cases DECIMAL(10,2),
    deaths_per_100_recovered DECIMAL(10,2),
    number_of_countries INT
);

CREATE TABLE covid_country_daily_summary (
    date DATE,
    country_region VARCHAR(100),
    confirmed BIGINT,
    deaths BIGINT,
    recovered BIGINT,
    active BIGINT,
    new_cases BIGINT,
    new_deaths BIGINT,
    new_recovered BIGINT,
    who_region VARCHAR(100)
);

CREATE TABLE usa_county_wise_data (
    UID INT,
    iso2 VARCHAR(10),
    iso3 VARCHAR(10),
    code3 INT,
    FIPS VARCHAR(20),
    Admin2 VARCHAR(100),
    Province_State VARCHAR(100),
    Country_Region VARCHAR(100),
    Lat DECIMAL(10,6),
    Long_ DECIMAL(10,6),
    Combined_Key VARCHAR(255),
    Date DATE,
    Confirmed INT,
    Deaths INT
);

CREATE TABLE covid_country_stats (
    Country_Region VARCHAR(100),
    Continent VARCHAR(50),
    Population BIGINT,
    TotalCases BIGINT,
    NewCases INT,
    TotalDeaths BIGINT,
    NewDeaths INT,
    TotalRecovered BIGINT,
    NewRecovered INT,
    ActiveCases BIGINT,
    Serious_Critical INT,
    Tot_Cases_Per_1M_Pop DECIMAL(12,2),
    Deaths_Per_1M_Pop DECIMAL(12,2),
    TotalTests BIGINT,
    Tests_Per_1M_Pop DECIMAL(12,2),
    WHO_Region VARCHAR(100)
);
