-- Creating Data from 2000 to 2013 script


USE AdventureWorks2022

create TABLE TableDates (
    Data DATE
);

DECLARE @start_date DATE = '2000-01-01';
DECLARE @end_date DATE = '2015-12-31';

WHILE @start_date <= @end_date
BEGIN
    INSERT INTO Dates2015 (Data) VALUES (@start_date);
    SET @start_date = DATEADD(DAY, 1, @start_date);
END ; 
