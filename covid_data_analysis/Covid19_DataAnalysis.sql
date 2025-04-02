/*
										COVID-19 Data Analysis and Insights
Project Overview:
This project analyzes COVID-19 data to uncover insights related to infection rates, death rates, and vaccination progress across various countries and continents. 
Using SQL queries, we derive meaningful business questions to assess the impact of COVID-19 and vaccination efforts globally.
*/

--1. General Dataset Overview
--Question: What are the key columns in the COVID dataset that we will work with?

SELECT cd.location, cd.date, cd.total_cases, cd.new_cases, cd.total_deaths, cd.population
FROM CovidDeaths AS cd
ORDER BY 1,2;
/*
Insight: The dataset contains crucial attributes such as location, date, total_cases, new_cases, total_deaths, and population, which are essential for analyzing the spread and impact of COVID-19.
*/


--2. Total Cases vs. Total Deaths
--Question: What is the likelihood of dying if someone contracts COVID-19 in different countries?

SELECT cd.location, cd.total_cases, cd.total_deaths,
ROUND(
	CASE 
		WHEN cd.total_cases = 0 THEN 0
		ELSE (cd.total_deaths / cd.total_cases) * 100
	END, 2
) AS DeathPercent
FROM CovidDeaths AS cd
WHERE cd.date = (SELECT MAX(date) FROM CovidDeaths) -- Gets the most recent data
ORDER BY DeathPercent DESC; -- Sort by death rate highest to lowest

/*
Insight: The likelihood of death after contracting COVID-19 varies by country. 
		 Some nations experienced significantly higher fatality rates, highlighting disparities in healthcare systems, testing capabilities, and pandemic response strategies.
*/

--3. Countries with Highest Infection Rate Compared to Population
--Question: Which countries had the highest infection rate relative to their population?

SELECT cd.location, 
       MAX(ROUND(
           (COALESCE(cd.total_cases, 0) / NULLIF(cd.population, 0)) * 100, 2
       )) AS InfectedPopulationPercent
FROM CovidDeaths AS cd
GROUP BY cd.location
ORDER BY InfectedPopulationPercent DESC;
/*
Insight: Several countries had infection rates exceeding 10% of their population at peak levels, underscoring the rapid spread of the virus in certain regions.
*/


--4. Countries with Highest Death Count per Population
--Question: Which countries had the highest death count relative to their population?

SELECT cd.location, 
MAX(ROUND(
    CASE 
        WHEN cd.population = 0 THEN 0
        ELSE (cd.total_deaths/cd.population) *100
    END, 2)) AS HighestDeathCount
FROM CovidDeaths AS cd
WHERE cd.continent IS NOT NULL
GROUP BY cd.location
ORDER BY HighestDeathCount DESC;
/*
Insight: Some countries experienced disproportionately high death rates relative to their population, indicating severe outbreaks, strained healthcare resources, and potentially late intervention measures.
*/


--5. Continent with Highest Death Count
--Question: Which continent had the highest death count?

SELECT cd.location, MAX(CAST(cd.total_deaths AS INT)) AS TotalDeathCount
FROM CovidDeaths AS cd
WHERE cd.location IS NOT NULL AND cd.location != 'World' AND cd.location != 'International' AND cd.continent IS NULL
GROUP BY cd.location
ORDER BY TotalDeathCount DESC;
/*
Insight: Among all continents, Europe recorded the highest total death count, reflecting differences in outbreak severity, containment measures, and healthcare infrastructure.
*/


--6. Global COVID-19 Summary
--Question: What are the total global COVID-19 cases and deaths?

SELECT SUM(cd.new_cases) AS total_cases, 
SUM(cast(cd.new_deaths AS INT)) AS total_deaths, 
ROUND(
    CASE 
        WHEN SUM(cd.new_cases) = 0 THEN 0
        ELSE (SUM(CAST(cd.new_deaths AS INT))/SUM(cd.new_cases))*100 
    END, 5) AS DeathPercentage
From CovidDeaths AS cd
WHERE cd.continent is not null 
ORDER BY 1,2;
/*
Insight: The total global COVID-19 cases and deaths provide a macro view of the pandemic s scale. 
		 The overall case fatality rate (death percentage) indicates the severity of the virus on a global level.
*/


--7. Vaccination Progress
--Question: What percentage of each country's population is fully vaccinated?
SELECT 
    cd.location, 
    cd.population, 
    ROUND(
        MAX(COALESCE(cv.people_fully_vaccinated, 0)) / NULLIF(cd.population, 0) * 100, 2
    ) AS EstimatedVaccinatedPopulationPercent
FROM CovidDeaths AS cd
JOIN CovidVaccinations AS cv
    ON cd.location = cv.location
    AND cd.date = cv.date
WHERE cd.continent IS NOT NULL
GROUP BY cd.location, cd.population
ORDER BY EstimatedVaccinatedPopulationPercent DESC;

/*
Insight: Vaccination rates varied widely across countries, with some achieving high full vaccination coverage quickly, while others experienced slower progress. 
		 Factors such as healthcare infrastructure, vaccine access, and public response might influence the pace of vaccination rollouts.
*/

--8. Using Temporary Tables for Vaccination Analysis
--Question: How can we store and retrieve vaccination progress using temporary tables?
DROP Table if exists #PercentPopulationVaccinated
Create Table #PercentPopulationVaccinated
(
Continent nvarchar(255),
Location nvarchar(255),
Date datetime,
Population numeric,
New_vaccinations numeric,
RollingPeopleVaccinated numeric
)

Insert into #PercentPopulationVaccinated
SELECT cd.continent, cd.location, cd.date, cd.population, cv.new_vaccinations,
SUM(CONVERT(INT,COALESCE((cv.new_vaccinations),0))) OVER (PARTITION BY cd.location ORDER BY cd.location, cd.date) AS RollingPeopleVaccinated
FROM CovidDeaths AS cd
JOIN CovidVaccinations AS cv
	ON cd.location = cv.location
	AND cd.date = cv.date
WHERE cd.continent IS NOT NULL

SELECT *, ROUND(((#PercentPopulationVaccinated.RollingPeopleVaccinated/Population)*100),3) AS VaccinationPercent
FROM #PercentPopulationVaccinated;
/*
Insight: Temporary tables allow efficient storage and retrieval of vaccination progress, improving query performance when analyzing large datasets.
*/


-- 9. Creating a View for Vaccination Analysis
--Question: How can we create a view to track vaccination progress over time?

CREATE VIEW PercentagePopulationVaccinated AS
WITH VaccinationPercent (continent, location, date, population, new_vaccinations, RollingPeopleVaccinated)
AS
(
SELECT cd.continent, cd.location, cd.date, cd.population, cv.new_vaccinations,
SUM(CONVERT(INT,COALESCE((cv.new_vaccinations),0))) OVER (PARTITION BY cd.location ORDER BY cd.location, cd.date) AS RollingPeopleVaccinated
FROM CovidDeaths AS cd
JOIN CovidVaccinations AS cv
	ON cd.location = cv.location
	AND cd.date = cv.date
WHERE cd.continent IS NOT NULL
)
SELECT *, ROUND(((VaccinationPercent.RollingPeopleVaccinated/Population)*100),2) AS VaccinationPercent
FROM VaccinationPercent;
/*
Insight: A structured SQL view simplifies tracking vaccination trends over time, ensuring consistency in data analysis and reducing redundant query execution.
*/

/*
10: Ranking & Aggregation
Question: Which countries had the highest and lowest COVID-19 cases, deaths, and vaccination rates?
*/

SELECT 
    cd.location, 
    MAX(cd.total_cases) AS highest_cases, 
    MAX(cd.total_deaths) AS highest_deaths, 
    MAX(cv.people_vaccinated) AS total_vaccinated
FROM CovidDeaths AS cd
JOIN CovidVaccinations AS cv 
    ON cd.location = cv.location
WHERE cd.continent IS NOT NULL
GROUP BY cd.location
ORDER BY highest_cases DESC;
/*
Insight: By ranking countries based on COVID-19 metrics, we can identify regions that managed the pandemic effectively versus those that faced severe outbreaks and fatalities. 
This ranking also highlights vaccination success rates across nations.
*/


/*
Conclusion: COVID-19 Data Analysis and Insights
Through this SQL analysis, we have derived meaningful insights into the impact of COVID-19 across different countries and continents. 
By systematically handling potential issues such as division by zero, NULL values, and data inconsistencies, we ensure that our queries provide reliable and actionable insights for decision-making.*/