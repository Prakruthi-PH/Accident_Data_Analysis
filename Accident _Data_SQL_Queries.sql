--  1. Find the total number of accidents in the dataset.
select * 
from `Accident dataset`;

 -- 2. Find the total number of casualties.
SELECT SUM(Number_of_Casualties) AS Num_Of_Causualities
FROM `Accident dataset`; 
  
  Output:
` Num_Of_Causualities
 70078 ` 

-- 3. Find the total number of vehicles involved in all accidents.
SELECT SUM(Number_of_Vehicles) AS Vehicles_Involved_Accident
FROM `Accident dataset`;

Output:
`Vehicles_Involved_Accident 
91727`

-- 4. Find the number of accidents by Accident Severity.
SELECT Accident_Severity,
       COUNT(Accident_Index) AS Num_Of_Accident
FROM `Accident dataset`
GROUP BY Accident_Severity; 
     
     Output:
   ` Accident_Severity	Num_Of_Accident
	Minor	              43085
	Major 	              6455
	Mina	              21
    Fatal	              445`

/* ALTER TABLE `Accident dataset`
RENAME COLUMN `ï»¿Accident_Index` TO Accident_Index; */

-- 5 Find the number of accidents by Road Type.

SELECT COUNT(Accident_Index) as Num_Of_Accident , Road_Type
FROM `Accident dataset`
GROUP BY Road_Type;

Output:

   `  Num_Of_Accident   Road_Type
       146	              Fine no high winds
       542	              Slip road
       972	              One way street
       3251	          Roundabout
       8034	          Dual carriageway
       37063	          Single carriageway ` 

-- 6 Find the **number of accidents by Weather Conditions**.
SELECT Weather_Conditions, COUNT(Accident_Index) as No_Of_Accident
FROM `Accident dataset`
GROUP BY Weather_Conditions;

Output:
`Weather_Conditions      	No_Of_Accident
Raining no high winds	5259
Fine no high winds	    41057
Fog or mist	            279
Raining + high winds	410
Snowing no high winds	1058
Other	                1425
Fine + high winds	    429
Snowing + high winds	91 `

-- 7  Find the **number of accidents by Urban or Rural Area**.

SELECT COUNT(Accident_Index) as Num_Of_Accident,Urban_or_Rural_Area
FROM `Accident dataset`
GROUP BY Urban_or_Rural_Area;

Output:
	`Num_Of_Accident	Urban_or_Rural_Area
	 37366	              Urban
	 12640	              Rural `
    
-- 8 Find the **average Speed Limit** across all accidents.
   
   SELECT AVG(Speed_limit) as Avg_Speed_Limit
   FROM `Accident dataset`;
   	
    Output:
    ` Avg_Speed_Limit
	36.5228 ` 

-- 9 Find the **maximum and minimum Speed Limit**.

SELECT MAX(Speed_limit) as Max_Speed_Limit , MIN(Speed_limit) as Min_Speed_Limit
From `Accident dataset`;

    Output:
	Max_Speed_Limit	  Min_Speed_Limit
	    70	               20  
    
10 Find the **number of accidents that occurred under each Light Condition**.

SELECT Light_Conditions , COUNT(Accident_Index) as Total_Accident
FROM `Accident dataset`
GROUP BY Light_Conditions;

    Output:
 	Light_Conditions	        Total_Accident
	Daylight	                   37523
	Darkness - lights lit	       10351
	Darkness - no lighting	       1475
	Darkness - lights unlit	       159
	Darkness - lighting unknown	   500  
    
11  Find the total number of accidents and total casualties for each Accident Severity.

SELECT 
    Accident_Severity,
    COUNT(Accident_Index) AS Total_Accidents,
    SUM(Number_of_Casualties) AS Total_Casualties
FROM `Accident dataset`
GROUP BY Accident_Severity;

    Output:
	Accident_Severity	Total_Accidents	Total_Casualties
	Minor	                 43085	      59863
	Major 	                 6455	      9325
	Mina	                  21	      27
    Fatal	                  445	      860  */

-- 12 Find the average number of casualties per accident for each Road Type.    

SELECT 
    Road_Type,
    AVG(Number_of_Casualties) AS Avg_Casualties_Per_Accident
FROM `Accident dataset`
GROUP BY Road_Type;

    Output:
	`Road_Type	          Avg_Casualties_Per_Accident
	Single carriageway	      1.3804
	Dual carriageway	      1.5419
	Roundabout	              1.3439
	Slip road	              1.4779
	One way street	          1.2078
	Fine no high winds	      1.2534 `

-- 13 Find the top 5 Road Types with the highest number of accidents.
SELECT 
    Road_Type,
    COUNT(Accident_Index) AS Total_Accidents
FROM `Accident dataset`
GROUP BY Road_Type
ORDER BY Total_Accidents DESC
LIMIT 5;

	 Output:
	Road_Type	       Total_Accidents
	Single carriageway	 37063
	Dual carriageway	 8034
	Roundabout	         3251
	One way street	     972
	Slip road	         542 */
    
-- 14  Find the top 5 Weather Conditions with the highest number of accidents.
SELECT 
    Weather_Conditions,
    COUNT(Accident_Index) AS Total_Accidents
FROM `Accident dataset`
GROUP BY Weather_Conditions
ORDER BY Total_Accidents DESC
LIMIT 5;

     Output:
`	Weather_Conditions	Total_Accidents
	Fine no high winds	    41057
	Raining no high winds	5259
	Other	                1425
	Snowing no high winds	1058
	Fine + high winds	    429 `
    
-- 15 Find the number of accidents for each Police Force and sort them from highest to lowest.

SELECT 
    Police_Force,
    COUNT(Accident_Index) AS Total_Accidents
FROM `Accident dataset`
GROUP BY Police_Force
ORDER BY Total_Accidents DESC;

       Output:
`	Police_Force	        Total_Accidents
	West Midlands	           6216
	Metropolitan Police	       6165
	West Yorkshire	           5761
	Greater Manchester	       5444
	Lancashire	               4439
	Northumbria	               3599
	South Yorkshire	           3459
	Merseyside	               3161
	Cheshire	               3018
	Humberside	               2466
	North Yorkshire	           2105
	Durham	                   1417
	Cumbria	                   1284
	Cleveland	               996
	Staffordshire	           478  `
    
-- 16 Find the average Speed Limit for each Urban or Rural Area.
SELECT 
    Urban_or_Rural_Area,
    AVG(Speed_limit) AS Avg_Speed_Limit
FROM `Accident dataset`
GROUP BY Urban_or_Rural_Area;
	
    Output:
   `Urban_or_Rural_Area	Avg_Speed_Limit
	Urban	31.5394
	other   40.0000
	Rural	51.2540 `

-- 17 Find the number of accidents for each Junction Detail and display only junction types with more than 1,000 accidents.

SELECT 
    Junction_Detail,
    COUNT(Accident_Index) AS Total_Accidents
FROM `Accident dataset`
GROUP BY Junction_Detail
HAVING COUNT(Accident_Index) > 1000;

     Output:
`	Junction_Detail	         Total_Accidents
	T or staggered junction	     16980
	Crossroads	                 6314
	Not at junction or within     20 
    metres	                     17995
	Private drive or entrance	 1537
	Roundabout	                 4283
	Other junction	             1043 `
    
-- 18 Find the total casualties for each Local Authority District and display the top 10 districts.
SELECT 
    `Local_Authority_(District)`,
    SUM(Number_of_Casualties) AS Total_Casualties
FROM `Accident dataset`
GROUP BY `Local_Authority_(District)`
ORDER BY Total_Casualties DESC
LIMIT 10;

     Output:
`	Local_Authority_(District)	Total_Casualties
	Wadajir	                      27827
	Waberi	                      14644
	Hodan	                      12600
	Hamar weyne	                  7080
	Bondhere	                  5356 `

-- 19 Find the number of accidents by year using Accident Date.
SELECT 
    YEAR(`Accident Date`) AS Accident_Year,
    COUNT(Accident_Index) AS Total_Accidents
FROM `Accident dataset`
GROUP BY YEAR(`Accident Date`)
ORDER BY Accident_Year;

     Output:
`	Accident_Year	Total_Accidents
	2022	           28615
	2023	           1655
	2024	           19721
	2025	           17  `

-- 20 Find the year-over-year change in the number of accidents.
    SELECT 
    Accident_Severity,
    ROUND(AVG(Number_of_Casualties), 2) AS Avg_Casualties
FROM `Accident dataset`
GROUP BY Accident_Severity
ORDER BY Avg_Casualties DESC
LIMIT 1;

      Output:
`	Accident_Severity	Avg_Casualties
	Fatal	               1.93    `

/*  ALTER TABLE `Accident dataset`
ADD COLUMN Year INT;

UPDATE `Accident dataset`
SET `Accident Date` = STR_TO_DATE(`Accident Date`, '%d-%m-%Y');  */

-- 21 Find the year-over-year percentage change in total casualties.
 WITH Yearly_Police_Accidents AS (
    SELECT 
        YEAR(`Accident Date`) AS Accident_Year,
        Police_Force,
        COUNT(*) AS Total_Accidents
    FROM `Accident dataset`
    GROUP BY 
        YEAR(`Accident Date`),
        Police_Force
),
Ranked_Police AS (
    SELECT 
        Accident_Year,
        Police_Force,
        Total_Accidents,
        RANK() OVER (
            PARTITION BY Accident_Year
            ORDER BY Total_Accidents DESC
        ) AS Police_Rank
    FROM Yearly_Police_Accidents
)
SELECT 
    Accident_Year,
    Police_Force,
    Total_Accidents,
    Police_Rank
FROM Ranked_Police
WHERE Police_Rank <= 3
ORDER BY Accident_Year, Police_Rank;

        Output:
`	Accident_Year	Police_Force	      Total_Accidents	Police_Rank
	2022	       Greater Manchester	       5444	           1
	2022	       Metropolitan Police	       4493            2
	2022	Lancashire	                       4439	           3
	2023	Metropolitan Police	               1655	           1
	2024	West Midlands	                   6216	           1
	2024	West Yorkshire	                   5761	           2
	2024	South Yorkshire	                   3459	           3
	2025	Metropolitan Police	               17	           1  `



    
    
 