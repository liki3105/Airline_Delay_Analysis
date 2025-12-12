--1. Total Flights and Delays by Airline
--Goal: Find which airlines operate the most flights and have the highest delay rates.
SELECT 
    carrier_name,
    SUM(total_flights) AS total_flights,
    SUM(delayed_flights_15min) AS total_delays,
    SUM(delayed_flights_15min) / SUM(total_flights) AS avg_delay_rate,
    AVG(avg_delay_per_delayed_flight) AS avg_delay_minutes
FROM airline_delays
GROUP BY carrier_name
ORDER BY avg_delay_rate DESC
LIMIT 10;

--2. Total Flights and Delays by Airport
SELECT 
    airport_name,
    SUM(total_flights) AS total_flights,
    SUM(delayed_flights_15min) AS total_delays,
    SUM(delayed_flights_15min) / SUM(total_flights) AS avg_delay_rate,
    AVG(avg_delay_per_delayed_flight) AS avg_delay_minutes
FROM airline_delays
WHERE total_flights > 0
GROUP BY airport_name
ORDER BY avg_delay_rate DESC
LIMIT 10;

--Average Delay Rate by Season
SELECT 
    season,
    AVG(delay_rate) AS avg_delay_rate
FROM airline_delays
WHERE total_flights > 0
GROUP BY season
ORDER BY avg_delay_rate DESC;


--Delay Causes by Airline
SELECT 
    carrier_name,
    SUM(carrier_delay_count) / SUM(delayed_flights_15min) AS carrier_delay_pct,
    SUM(weather_delay_count) / SUM(delayed_flights_15min) AS weather_delay_pct,
    SUM(nas_delay_count) / SUM(delayed_flights_15min) AS nas_delay_pct,
    SUM(security_delay_count) / SUM(delayed_flights_15min) AS security_delay_pct,
    SUM(late_aircraft_delay_count) / SUM(delayed_flights_15min) AS late_aircraft_delay_pct
FROM airline_delays
WHERE delayed_flights_15min > 0
GROUP BY carrier_name
ORDER BY carrier_delay_pct DESC
LIMIT 10;

--Trend of Average Delay Rate Over Years
SELECT 
    EXTRACT(YEAR FROM date) AS year,
    AVG(delay_rate) AS avg_delay_rate
FROM airline_delays
WHERE total_flights > 0
GROUP BY EXTRACT(YEAR FROM date)
ORDER BY year;

--Top 10 Airports by Average Delay Rate
SELECT 
    airport_name,
    SUM(delayed_flights_15min) / SUM(total_flights) AS avg_delay_rate,
    AVG(avg_delay_per_delayed_flight) AS avg_delay_minutes
FROM airline_delays
WHERE total_flights > 0
GROUP BY airport_name
ORDER BY avg_delay_rate DESC
LIMIT 10;
