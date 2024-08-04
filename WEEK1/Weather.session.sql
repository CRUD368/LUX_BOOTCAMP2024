CREATE TABLE WeatherData(

    Date_Time datetime,
    Temp_C float,
    Dew_Point_Temp_C float,
    Rel_Hum_ int,
    Wind_Speed_km_h int,
    Visibility_km float,
    Press_kPa float,
    Weather_Condition varchar(100),
    PRIMARY KEY (Date_Time )
);

BULK INSERT WeatherData
FROM '/home/cru_3d/Documents/Bootcamp/Assignments/Data projects/1. Weather Data.csv'
WITH(
    FIRSTROW = 2, --Assuming header row
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);