
--Create database
Create database covid_db

--Use database
use covid_db

--Import using flat file and retrive all the data of covid_19 dataset

Select * From covid_19


--What is the total number of confirmed cases globally?

Select Sum(Confirmed) as Total_confirm_case From covid_19;


--What is the average number of deaths per country?
 Select avg(Deaths) as Avg_death From covid_19;
 
-- Which countries have more than 5,000 active cases?


Select Country_Region, Active From covid_19 
where Active > 5000;

--List the top 10 countries by new confirmed cases.

Select top 10 Country_Region, New_cases From covid_19
Order By New_cases DESC ;

--Which country has the lowest number of recovered cases?

Select Top 5 Country_Region, Recovered From covid_19
Order By Recovered ASC;

--Find the countries Where the number of new deaths is zero.

Select Country_Region From covid_19 
where New_deaths = 0;

-- List all countries Where the death rate (Deaths / 100 Cases) is higher than 5. 

Select Country_Region, Deaths_100_Cases From covid_19
where Deaths_100_Cases > 5;


-- Find all countries Where the recovery rate (Recovered / 100 Cases) is less than 50.
Select Country_Region, Recovered_100_Cases From covid_19
where Recovered_100_Cases < 50;

--Show the total active cases grouped by WHO Region.

Select WHO_Region, Sum(Active) as Total_Active From covid_19
group by WHO_Region
Order By Total_Active Desc;


-- Which countries had more than 500 new recoveries in the last update?
Select Country_Region, New_recovered From covid_19
where New_recovered > 500;


--Find the average number of new cases by WHO Region.
Select WHO_Region, Avg(New_cases) as Avg_New_Cases From covid_19
Group By WHO_Region;


--List countries Where new confirmed cases are greater than the weekly change in confirmed cases.
Select Country_Region From covid_19
Where New_cases > _1_week_change;


--Which countries had zero new cases but more than 1000 active cases?

Select Country_Region From covid_19 
where New_cases = 0 AND Active > 1000;



-- Show the countries Where new recoveries are more than new confirmed cases.

Select Country_Region From covid_19
Where New_recovered > New_cases;


--Which countries have a death-to-recovery ratio Deaths_100_Recovered higher than 10?
Select Country_Region, Deaths_100_Recovered From covid_19
Where Deaths_100_Recovered > 10;


--Group the countries by WHO Region and calculate total deaths for each region.
Select WHO_Region, Sum(Deaths) AS Total_Deaths From covid_19 
Group By WHO_Region;

-- Find countries with an increase of more than 1000 cases compared to the previous week.
Select Country_Region, _1_week_change From covid_19
Where _1_week_change > 1000;


--List all countries with more than a 20% weekly increase (1 week % increase).
Select Country_Region, _1_week_increase From covid_19
Where _1_week_increase > 20;


--Identify countries Where the number of confirmed cases last week was higher than now.
Select Country_Region From covid_19 
Where Confirmed_last_week > Confirmed;


-- Find the average weekly percentage increase across all countries.
Select AVG(_1_week_increase) as Avg_Weekly_Percent_Increase From covid_19;


-- Which WHO Region has the highest number of confirmed cases?
Select WHO_Region, Sum(Confirmed) as Total_Confirmed From covid_19
Group By WHO_Region
Order By Total_Confirmed DESC;


 Select * from Covid_19


--Find the top 5 countries with the highest difference between confirmed and recovered cases.
Select Top 5 Country_Region, (Confirmed - Recovered) as Difference From covid_19
Order By Difference DESC;


-- List all countries with fewer than 50 deaths and more than 500 confirmed cases.

Select Country_Region from covid_19
Where Deaths < 50 and Confirmed > 500;


-- Which countries have more than 70% recovery rate and less than 3% death rate?

Select Country_Region from covid_19
Where Recovered_100_Cases > 70 and Deaths_100_Cases < 3;


-- Which countries are in the 'Africa' WHO region and have more than 1,000 active cases?
Select Country_Region From covid_19 
Where WHO_Region = 'Africa' And Active > 1000;


--Show countries Where the number of active cases is less than 10% of confirmed cases.
Select Country_Region From covid_19
Where (Active * 1.0 / Confirmed) < 0.10;


-- List all countries Where the number of confirmed cases doubled in the last week.
Select Country_Region from covid_19
where Confirmed >= 2 * Confirmed_last_week;


-- Group countries by WHO Region and show the average number of deaths per country.
Select WHO_Region, Avg(Deaths) as Avg_Deaths from covid_19 
Group By WHO_Region
Order By Avg_Deaths desc;

-- Find the country with the highest active-to-confirmed case ratio.
Select Country_Region, (Active * 1.0 / Confirmed) as Active_to_Confirmed_Ratio From covid_19
Order By Active_to_Confirmed_Ratio Desc;

-- Rank all countries by 1 week % increase in descending order.
Select Country_Region, _1_week_increase From covid_19
Order By _1_week_increase DESC;



--Thank You














