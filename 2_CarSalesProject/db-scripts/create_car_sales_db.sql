-- Select database
USE [CarSales]

-- Delete table if exists and create it again
IF OBJECT_ID('[dbo].[work_Car_Sales]', 'U') IS NOT NULL
	DROP TABLE [dbo].[work_Companies]

	CREATE TABLE [dbo].[work_Car_Sales](
		[Row_Number] INT,
		[Manufacturer] VARCHAR(100),
		[Model] VARCHAR(100),
		[Sale Date] DATE,
		[Fuel_efficiency] FLOAT,
		[Sold Price in Thousands] FLOAT
	)

-- Copy data from the raw table into working table
INSERT INTO [dbo].[work_Car_Sales] (
	[Row_Number],
	[Manufacturer],
	[Model],
	[Sale Date],
	[Fuel_efficiency],
	[Sold Price in Thousands]
)
SELECT
	[Row_Number],
	[Manufacturer],
	[Model],
	[Sale Date],
	[Fuel_efficiency],
	[Sold Price in Thousands]
FROM
	[dbo].Raw_Car_Sales