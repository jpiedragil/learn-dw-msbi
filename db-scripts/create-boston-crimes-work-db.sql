-- Select database
USE [Boston_Crimes];

-- Delete working table if exists and create it again
IF OBJECT_ID('Work_Boston_Crimes', 'U') IS NOT NULL
	drop table Work_Boston_Crimes
	
	CREATE TABLE Work_Boston_Crimes(
		[Row_Number] [int],
		[INCIDENT_NUMBER] [varchar](500),
		[OFFENSE_CODE] [varchar](500),
		[OFFENSE_CODE_GROUP] [varchar](500),
		[OFFENSE_DESCRIPTION] [varchar](500),
		[DISTRICT] [varchar](500),
		[REPORTING_AREA] [varchar](100),
		[SHOOTING] [varchar](50),
		[OCCURRED_ON_DATE] datetime,
		[UCR_PART] [varchar](500),
		[STREET] [varchar](500)
	)

INSERT INTO Work_Boston_Crimes(
	[Row_Number],
	[INCIDENT_NUMBER],
	[OFFENSE_CODE],
	[OFFENSE_CODE_GROUP],
	[OFFENSE_DESCRIPTION],
	[DISTRICT],
	[REPORTING_AREA],
	[SHOOTING],
	[OCCURRED_ON_DATE],
	[UCR_PART],
	[STREET]
)
SELECT
	[Row_Number],
	[INCIDENT_NUMBER],
	[OFFENSE_CODE],
	[OFFENSE_CODE_GROUP],
	[OFFENSE_DESCRIPTION],
	[DISTRICT],
	[REPORTING_AREA],
	[SHOOTING],
	[OCCURRED_ON_DATE],
	[UCR_PART],
	[STREET]
FROM
	[dbo].[Boston Crimes];