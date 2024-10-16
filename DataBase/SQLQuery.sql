USE RoadAccidentsDB;

CREATE TABLE road_accidents (
    Reference_Number VARCHAR(255),
    Grid_Ref_Easting VARCHAR(255),
    Grid_Ref_Northing VARCHAR(255),
    Number_of_Vehicles VARCHAR(255),
    Number_of_Casualties VARCHAR(255),
    Accident_Date VARCHAR(255),
    Time_24hr VARCHAR(255),
    First_Road_Class VARCHAR(255),
    Road_Surface VARCHAR(255),
    Lighting_Conditions VARCHAR(255),
    Weather_Conditions VARCHAR(255),
    Casualty_Class VARCHAR(255),
    Casualty_Severity VARCHAR(255),
    Sex_of_Casualty VARCHAR(255),
    Age_of_Casualty VARCHAR(255),
    Type_of_Vehicle VARCHAR(255)
);

BULK INSERT road_accidents
FROM 'E:\Me\DEPI Project\Data\dataset.csv'
WITH (
    FIRSTROW = 2,  -- Skips the header row
    FIELDTERMINATOR = ',',  -- The delimiter in your CSV file
    ROWTERMINATOR = '\n',  -- End of row
    ERRORFILE = 'E:\Me\DEPI Project\Data\error_log_file.txt'  -- Optional: to log errors
);

SELECT * FROM road_accidents;

WITH CTE AS (
    SELECT 
        Reference_Number,
        ROW_NUMBER() OVER (PARTITION BY Reference_Number ORDER BY Reference_Number) AS row_num
    FROM road_accidents
)
DELETE FROM CTE
WHERE row_num > 1;

SELECT *
FROM road_accidents
WHERE Reference_Number IS NULL;

ALTER TABLE road_accidents
ALTER COLUMN Reference_Number VARCHAR(255) NOT NULL;

ALTER TABLE road_accidents
ADD CONSTRAINT PK_Reference_Number PRIMARY KEY (Reference_Number);