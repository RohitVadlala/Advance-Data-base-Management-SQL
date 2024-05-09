--Code is populating the Dim_LYear table with unique List Year values from the dbo.staging_table


INSERT INTO Dim_LYear([List_Year])
	SELECT
	DISTINCT [List Year]
	FROM [dbo].[staging_table]
	ORDER BY [List Year] ASC

-- Now Inserting unique records from the staging table into the Dim_Buyer table based on the specified columns.
INSERT INTO Dim_Buyer(BuyerID, [FirstName], [LastName], [BuyerAddress], [PhoneNumber])
	SELECT
	DISTINCT BuyerID, [FirstName], [LastName], [BuyerAddress], [PhoneNumber]
	FROM [dbo].[staging_table]
	ORDER BY BuyerID ASC;

-- updating a column in the staging_table based on a match between the dbo.staging_table and the dbo.Dim_LYear table

UPDATE dbo.[staging_table]
SET dbo.[staging_table].year_id = dbo.Dim_LYear.year_id
FROM dbo.[staging_table]
INNER JOIN dbo.Dim_LYear ON 
[staging_table].[List Year] = Dim_LYear.[List_Year]


-- Code is populating the Dim_Date_rec table with unique Date Recorded values from the dbo.staging_table

INSERT INTO Dim_Date_rec([Date_Recorded])
	SELECT
	DISTINCT [Date Recorded]
	FROM [dbo].[staging_table]
	ORDER BY [Date Recorded] ASC

-- 
-- updating a column in the staging_table based on a match between the dbo.staging_table and the dbo.Dim_Date_rec table

UPDATE dbo.[staging_table]
SET dbo.[staging_table].date_id = dbo.Dim_Date_rec.date_id
FROM dbo.[staging_table]
INNER JOIN dbo.Dim_Date_rec ON 
[staging_table].[Date Recorded] = Dim_Date_rec.[Date_Recorded]

-- Code is populating the Dim_Opm_remarks table with unique OPM remarks values from the dbo.staging_table

INSERT INTO Dim_Opm_remarks([OPM_Remarks])
	SELECT
	DISTINCT [OPM remarks]
	FROM [dbo].[staging_table]
	ORDER BY [OPM remarks] ASC

-- updating a column in the staging_table based on a match between the dbo.staging_table and the dbo.Dim_Opm_remarks table

UPDATE dbo.[staging_table]
SET dbo.[staging_table].opm_remark_id = dbo.Dim_Opm_remarks.[opm_remark_id]
FROM dbo.[staging_table]
INNER JOIN dbo.Dim_Opm_remarks ON 
[staging_table].[OPM remarks] = Dim_Opm_remarks.[OPM_Remarks]

-- Code is populating the Dim_Assessor_remarks table with unique Assessor Remarks values from the dbo.staging_table

INSERT INTO Dim_Assessor_remarks([Assessor_Remarks])
	SELECT
	DISTINCT [Assessor Remarks]
	FROM [dbo].[staging_table]
	ORDER BY [Assessor Remarks] ASC

-- updating a column in the staging_table based on a match between the dbo.staging_table and the dbo.Dim_Assessor_remarks table

UPDATE dbo.[staging_table]
SET dbo.[staging_table].assessor_remark_id = dbo.Dim_Assessor_remarks.[assessor_remark_id]
FROM dbo.[staging_table]
INNER JOIN dbo.Dim_Assessor_remarks ON 
[staging_table].[Assessor Remarks] = Dim_Assessor_remarks.[Assessor_Remarks]


-- Code is populating the Dim_Non_Use_Code table with unique  Non Use Code values from the dbo.staging_table

INSERT INTO Dim_Non_Use_Code([Non_Use_Code])
	SELECT
	DISTINCT [Non Use Code]
	FROM [dbo].[staging_table]
	ORDER BY [Non Use Code] ASC

-- updating a column in the staging_table based on a match between the dbo.staging_table and the dbo.Dim_Non_Use_Code table

UPDATE dbo.[staging_table]
SET dbo.[staging_table].[Non_Use_Code_id] = dbo.Dim_Non_Use_Code.[Non_Use_Code_id]
FROM dbo.[staging_table]
INNER JOIN dbo.Dim_Non_Use_Code ON 
[staging_table].[Non Use Code] = Dim_Non_Use_Code.[Non_Use_Code]


-- Code is populating the Dim_Location table with unique Location values from the dbo.staging_table

INSERT INTO Dim_Location([Location])
	SELECT
	DISTINCT [Location]
	FROM [dbo].[staging_table]
	ORDER BY [Location] ASC

-- updating a column in the staging_table based on a match between the dbo.staging_table and the dbo.Dim_Location table

UPDATE dbo.[staging_table]
SET dbo.[staging_table].[location_id] = dbo.Dim_Location.[location_id]
FROM dbo.[staging_table]
INNER JOIN dbo.Dim_Location ON 
[staging_table].[Location] = Dim_Location.[Location]


-- Code is populating the Dim_Property_Type table with unique Property Type values from the dbo.staging_table

INSERT INTO Dim_Property_Type([Property_Type])
	SELECT
	DISTINCT [Property Type]
	FROM [dbo].[staging_table]
	ORDER BY [Property Type] ASC

-- updating a column in the staging_table based on a match between the dbo.staging_table and the dbo.Dim_Property_Type table

UPDATE dbo.[staging_table]
SET dbo.[staging_table].[property_id] = dbo.Dim_Property_Type.[property_id]
FROM dbo.[staging_table]
INNER JOIN dbo.Dim_Property_Type ON 
[staging_table].[Property Type] = Dim_Property_Type.[Property_Type]


-- Code is populating the Dim_Residential_Type table with unique Residential Type values from the dbo.staging_table

INSERT INTO Dim_Residential_Type([Residential_Type])
	SELECT
	DISTINCT [Residential Type]
	FROM [dbo].[staging_table]
	ORDER BY [Residential Type] ASC

-- updating a column in the staging_table based on a match between the dbo.staging_table and the dbo.Dim_Residential_Type table

UPDATE dbo.[staging_table]
SET dbo.[staging_table].[residential_id] = dbo.Dim_Residential_Type.[residential_id]
FROM dbo.[staging_table]
INNER JOIN dbo.Dim_Residential_Type ON 
[staging_table].[Residential Type] = Dim_Residential_Type.[Residential_Type]



-- Code is populating the Dim_Address table with unique Address values from the dbo.staging_table

INSERT INTO Dim_Address([Address])
	SELECT
	DISTINCT [Address]
	FROM [dbo].[staging_table]
	ORDER BY [Address] ASC

-- updating a column in the staging_table based on a match between the dbo.staging_table and the dbo.Dim_Address table

UPDATE dbo.[staging_table]
SET dbo.[staging_table].[address_id] = dbo.Dim_Address.[address_id]
FROM dbo.[staging_table]
INNER JOIN dbo.Dim_Address ON 
[staging_table].[Address] = Dim_Address.[Address]


-- Code is populating the Dim_Town table with unique Town values from the dbo.staging_table

INSERT INTO Dim_Town([Town])
	SELECT
	DISTINCT [Town]
	FROM [dbo].[staging_table]
	ORDER BY [Town] ASC

-- updating a column in the staging_table based on a match between the dbo.staging_table and the dbo.Dim_Town table

UPDATE dbo.[staging_table]
SET dbo.[staging_table].[Town_id] = dbo.Dim_Town.[Town_id]
FROM dbo.[staging_table]
INNER JOIN dbo.Dim_Town ON 
[staging_table].[Town] = Dim_Town.[Town]

--code is populating the FactRealEstate fact table with data from the staging_table

INSERT INTO [dbo].[FactRealEstate]
           ([Serial Number]
           ,[List_Year_Id]
           ,[Date_Recorded_Id]
           ,[Address_Id]
           ,[Town_id]
           ,[Residential_Type_Id]
           ,[Assessor_Remarks_Id]
           ,[OPM_Remarks_Id]
           ,[Non_Use_Id]
           ,[Property_Type_Id]
           ,[location_id]
           ,[SalesRatio]
		   ,[SaleAmount]
		   ,[AssessedValue]
		   ,[BuyerID])
		   SELECT
			[Serial Number]
           ,[year_id]
           ,[date_id]
           ,[address_id]
           ,[Town_id]
           ,[residential_id]
           ,[assessor_remark_id]
           ,[opm_remark_id]
           ,[Non_Use_Code_id]
           ,[property_id]
           ,[location_id]
           ,[Sales Ratio]
		   ,[Sale Amount]
		   ,[Assessed Value]
		   ,[BuyerID]
		  FROM [dbo].[staging_table];

