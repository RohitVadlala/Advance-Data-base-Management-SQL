--creating dimension table Dim_LYear (Here in this table we are creating table dimension table in the Dim_LYear with columns year_id as primary key and List_Year as another column (int)
 
create table Dim_LYear(
	year_id int identity(1,1) not null,
	List_Year int null,
	primary key(year_id)
	);

--creating dimension table Dim_Date_rec (Here in this table we are creating table dimension table in the Dim_Date_rec with columns date_id as primary key and Date Recorded as another column (varchar)

create table Dim_Date_rec(
	date_id int identity(1,1) not null,
	Date_Recorded Varchar(100) null,
	primary key(date_id)
	);
	
--creating dimension table Dim_Opm_remarks (Here in this table we are creating table dimension table in the Dim_Opm_remarks with columns opm_remark_id as primary key and OPM_Remarks as another column (varchar)
	
create table Dim_Opm_remarks(
	opm_remark_id int identity(1,1) not null,
	OPM_Remarks varchar(500),
	primary key(opm_remark_id)
	);

--creating dimension table Dim_Assessor_remarks (Here in this table we are creating table dimension table in the Dim_Assessor_remarks with column assessor_remark_id as primary key and Assessor_Remarks as another column (varchar)

create table Dim_Assessor_remarks(
	assessor_remark_id int identity(1,1) not null,
	Assessor_Remarks varchar(500) null,
	primary key(assessor_remark_id)
	);

--creating dimension table Dim_Non_Use_Code (Here in this table we are creating table dimension table in the Dim_Non_Use_Code with column Non_Use_Code_id as primary key and Non_Use_Code as another column (varchar)


create table Dim_Non_Use_Code(
	Non_Use_Code_id int identity(1,1) not null,
	Non_Use_Code varchar(100) null,
	primary key(Non_Use_Code_id)
	);

--creating dimension table Dim_Location (Here in this table we are creating table dimension table in the Dim_Location with column location_id as primary key and Location as another column (varchar)


create table Dim_Location(
location_id int identity(1,1) not null,
Location varchar(100) null,
primary key(location_id)
);

--creating dimension table Dim_Property_Type (Here in this table we are creating table dimension table in the Dim_Property_Type with column property_id as primary key and Property_Type as another column (varchar)

create table Dim_Property_Type(
property_id int identity(1,1) not null,
Property_Type varchar(100) null,
primary key(property_id)
);

--creating dimension table Dim_Residential_Type (Here in this table we are creating table dimension table in the Dim_Residential_Type with column residential_id as primary key and Residential_Type as another column (varchar)

create table Dim_Residential_Type(
residential_id int identity(1,1) not null,
Residential_Type varchar(100) null,
primary key(residential_id)
);

--creating dimension table Dim_Address (Here in this table we are creating table dimension table in the Dim_Address with column address_id as primary key and Address as another column (varchar)

create table Dim_Address(
address_id int identity(1,1) not null,
Address varchar(100) null,
primary key(address_id)
);

--creating dimension table Dim_Town (Here in this table we are creating table dimension table in the Dim_Town with column Town_id as primary key and Town as another column (varchar))


create table Dim_Town(
Town_id int identity(1,1) not null,
Town varchar(100) null,
primary key(Town_id)
);

--creating dimension table Dim_Buyer (Here in this table we are creating table dimension table in the Dim_Buyer with column D_BuyerID as primary key and BuyerID (int), FirstName (nvarchar), LastName(nvarchar), BuyerAddress (nvarchar), PhoneNumber (bigint) as other columns)


create table Dim_Buyer(
	D_BuyerID int identity(1,1) not null,
	BuyerID int null,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[BuyerAddress] [nvarchar](50) NULL,
	[PhoneNumber] [bigint] NULL,
	primary key(D_BuyerID));


--Here we are creating Fact Table

CREATE TABLE dbo.FactRealEstate(
      RowId int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	  [Serial Number] int,
      AssessedValue float,
      SaleAmount float,
      SalesRatio float,
      List_Year_Id int FOREIGN KEY REFERENCES dbo.Dim_LYear(year_id),
      Date_Recorded_Id int FOREIGN KEY REFERENCES dbo.Dim_Date_rec(date_id),
      Address_Id int FOREIGN KEY REFERENCES dbo.Dim_Address(address_id),
      Property_Type_Id int FOREIGN KEY REFERENCES dbo.Dim_Property_Type(property_id),
      Residential_Type_Id int FOREIGN KEY REFERENCES dbo.Dim_Residential_Type(residential_id),
      Non_Use_Id int FOREIGN KEY REFERENCES dbo.Dim_Non_Use_Code(Non_Use_Code_id),
      Assessor_Remarks_Id int FOREIGN KEY REFERENCES dbo.Dim_Assessor_remarks(assessor_remark_id),
      OPM_Remarks_Id int FOREIGN KEY REFERENCES dbo.Dim_Opm_remarks(opm_remark_id),
      Location_Id int FOREIGN KEY REFERENCES dbo.Dim_Location(location_id),
	  [Town_id] int FOREIGN KEY REFERENCES dbo.Dim_Town(Town_id),
	  BuyerID int  FOREIGN KEY REFERENCES dbo.Dim_Buyer(D_BuyerID)
      );
