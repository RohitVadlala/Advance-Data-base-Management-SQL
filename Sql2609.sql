SELECT
	DState. State, 
	City. City, 
	DYear. Year, 
	Crime. Robbery
FROM Crime.FactCrime AS Crime
INNER JOIN Crime.DimCity AS City ON Crime.CityID = City.CityID
INNER JOIN Crime.DimState AS DState ON City.StateID = DState.StateID
INNER JOIN Crime.DimYear AS DYear ON Crime.YearID = DYear.YearID
where DState.State = 'Alaska' AND City.City = 'Anchorage' AND DYear.Year = '2008'

 



--Which State have the top 10 Violent Crimes?
SELECT TOP 10
    DimState.[State],
    SUM(FC.ViolentCrime) AS TotalViolentCrimes
FROM [Crime].[FactCrime] FC
JOIN [Crime].[DimCity] DimCity ON FC.CityID = DimCity.CityID
JOIN [Crime].[DimState] DimState ON DimCity.StateID = DimState.StateID
GROUP BY DimState.[State]
ORDER BY TotalViolentCrimes DESC;

 

 

--Which City has the highest number of Murders in 2008?

 

SELECT TOP 1
    DimCity.City,
    FC.MurderAndNonEgligentManslaughter AS TotalMurders
FROM [Crime].[FactCrime] FC
JOIN [Crime].[DimCity] DimCity ON FC.CityID = DimCity.CityID
JOIN [Crime].[DimYear] DimYear ON FC.YearID = DimYear.YearID
WHERE DimYear.[Year] = 2008
ORDER BY TotalMurders DESC;

 

--Which City has the highest PropertyCrime But the Least Violent Crimes?

 

WITH PropertyViolentCrime AS (
    SELECT
        DimCity.City,
        SUM(FC.PropertyCrime) AS TotalPropertyCrime,
        SUM(FC.ViolentCrime) AS TotalViolentCrimes
    FROM [Crime].[FactCrime] FC
    JOIN [Crime].[DimCity] DimCity ON FC.CityID = DimCity.CityID
    GROUP BY DimCity.City
)

 

SELECT TOP 1
    City,
    TotalPropertyCrime,
    TotalViolentCrimes
FROM PropertyViolentCrime
ORDER BY TotalPropertyCrime DESC, TotalViolentCrimes ASC;

 

--Which State has the lowest Crime?

 

WITH StateTotalCrimes AS (
    SELECT
        DimState.[State],
        SUM(FC.ViolentCrime + FC.MurderAndNonEgligentManslaughter + FC.ForcibleRape + 
            FC.Robbery + FC.AggravatedAssault + FC.PropertyCrime + FC.Buglary + 
            FC.LarcenyTheft + FC.MotorVehicleTheft + FC.Arson) AS TotalCrimes
    FROM [Crime].[FactCrime] FC
    JOIN [Crime].[DimCity] DimCity ON FC.CityID = DimCity.CityID
    JOIN [Crime].[DimState] DimState ON DimCity.StateID = DimState.StateID
    GROUP BY DimState.[State]
)

 

SELECT TOP 1
    [State],
    TotalCrimes
FROM StateTotalCrimes
ORDER BY TotalCrimes ASC;