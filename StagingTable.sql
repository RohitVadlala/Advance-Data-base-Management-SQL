-- created a new staging table using the staging table loaded from previous SSIS
select [Serial Number]
      ,[List Year]
      ,[Date Recorded]
      ,[Town]
      ,[Address]
      ,[Assessed Value]
      ,[Sale Amount]
      ,[Sales Ratio]
      ,[Property Type]
      ,[Residential Type]
      ,[Non Use Code]
      ,[Assessor Remarks]
      ,[OPM remarks]
      ,[Location]
      ,[year_id]
      ,[date_id]
      ,[opm_remark_id]
      ,[assessor_remark_id]
      ,[Non_Use_Code_id]
      ,[location_id]
      ,[property_id]
      ,[residential_id]
      ,[address_id]
      ,[Town_id]
	  ,RR.[BuyerID]
	  ,[FirstName]
	  ,[LastName]
	  ,[BuyerAddress]
	  ,[PhoneNumber]
into [Real_Estate_Sales_DB].[dbo].staging_table
from [Real_Estate_Sales_DB].[dbo].[Real_Estate_Sales_2001-2020_GL] RR
inner join RealEstate.RealEstateProperties.Buyers BB
on RR.BuyerID = BB.BuyerID;
