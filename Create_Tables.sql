

-- Insurance_Company table
CREATE TABLE Insurance_Company 
(
    Company_Name nvarchar(100) PRIMARY KEY,
    Telephone bigint,
    City nvarchar(100),
    State nvarchar(100)
);

-- Nurse table
CREATE TABLE Nurse 
(
    Nurse_Number INT PRIMARY KEY,
    Nurse_FName nvarchar(100),
	Nurse_LName nvarchar(100),
    Certification nvarchar(100),
    Year_Hired DATE
);

-- Department table
CREATE TABLE Department 
(
    Department_Number INT PRIMARY KEY,
    Office_Number nvarchar(100),
    Telephone bigint
);

-- Doctor table
CREATE TABLE Doctor 
(
    Doctor_Number INT PRIMARY KEY,
    Doctor_FName nvarchar(100),
	Doctor_LName nvarchar(100),
    Office_Number nvarchar(100),
    Telephone bigint
);

-- Degree table
CREATE TABLE Degree 
(
    Doctor_Number INT,
    Degree_Type nvarchar(100),
    Major nvarchar(100),
    University nvarchar(100),
    Year INT,
    PRIMARY KEY(Doctor_Number, Degree_Type),
    FOREIGN KEY(Doctor_Number) REFERENCES Doctor(Doctor_Number)
);

-- Claim table
CREATE TABLE Claim 
(
    Claim_Number INT PRIMARY KEY,
    Company_Name nvarchar(100),
    Patient_Number INT,
    Diagnosis nvarchar(100),
    Amount INT,
    FOREIGN KEY(Company_Name) REFERENCES Insurance_Company(Company_Name)
);

-- Patient table
CREATE TABLE Patient 
(
    Patient_Number INT PRIMARY KEY,
    Patient_FName nvarchar(100),
	Patient_LName nvarchar(100),
    Age INT,
    Street nvarchar(100),
    City nvarchar(100),
    State nvarchar(100)
	--Zip varchar(9)
);

-- Operation_Type table
CREATE TABLE Operation_Type 
(
    Operation_Name nvarchar(100) PRIMARY KEY,
    Duration TIME,
    Cost INT
);

-- Operation table
CREATE TABLE Operation 
(
    Patient_Number INT,
    Doctor_Number INT,
    Operation_Name nvarchar(100),
    Date DATE,
    Start_Time TIME,
    End_Time TIME,
    Operating_Room_No INT,
    PRIMARY KEY(Patient_Number, Doctor_Number, Operation_Name, Date),
    FOREIGN KEY(Patient_Number) REFERENCES Patient(Patient_Number),
    FOREIGN KEY(Doctor_Number) REFERENCES Doctor(Doctor_Number),
    FOREIGN KEY(Operation_Name) REFERENCES Operation_Type(Operation_Name)
);
