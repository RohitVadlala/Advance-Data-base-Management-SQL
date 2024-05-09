-- Insert 5 values into the Ship table
INSERT INTO Ship (Ship_Name, Launch_Datetime)
VALUES
    ('Apple', '2023-01-01'),
    ('Ball', '2023-02-01'),
    ('Cat', '2023-03-01'),
    ('Dog', '2023-04-01'),
    ('Eagle', '2023-05-01');

-- Insert 5 values into the Cruise table
INSERT INTO Cruise (Start_Datetime, End_Datetime, Cruise_Director_First_Name, Cruise_Director_Last_Name, Ship_Number)
VALUES
    ('2023-01-10', '2023-01-20', 'Rohit', 'Vadlala', 1),
    ('2023-02-10', '2023-02-20', 'Sachin', 'Tendulkar', 2),
    ('2023-03-10', '2023-03-20', 'Poorna', 'Addala', 3),
    ('2023-04-10', '2023-04-20', 'Dhoni', 'Mahendra', 4),
    ('2023-05-10', '2023-05-20', 'Rajni', 'Kanth', 5);

-- Insert 5 values into the Country table
INSERT INTO Country (Country)
VALUES
    ('USA'),
    ('UK'),
    ('India'),
    ('Russia'),
    ('China');

-- Insert 5 values into the Port_Visit table
INSERT INTO Port_Visit (Port_Name, Number_of_Docs, Port_Manager_First_Name, Port_Manager_Last_Name, Country_Number)
VALUES
    ('Port1', 100, 'Mani', 'Ani', 1),
    ('Port2', 200, 'Fani', 'Ban', 2),
    ('Port3', 150, 'Gani', 'Han', 3),
    ('Port4', 120, 'Dani', 'Lan', 4),
    ('Port5', 180, 'Kani', 'Dan', 5);

-- Insert 5 values into the Visit table
INSERT INTO Visit (Cruise_Number, Port_Number, Arrival_Datetime, Departure_Datetime)
VALUES
    (1, 1, '2023-01-12', '2023-01-15'),
    (2, 2, '2023-02-12', '2023-02-15'),
    (3, 3, '2023-03-12', '2023-03-15'),
    (4, 4, '2023-04-12', '2023-04-15'),
    (5, 5, '2023-05-12', '2023-05-15');

-- Insert 5 values into the Passenger table
INSERT INTO Passenger (Passenger_First_Name, Passenger_Middle_Name, Passenger_Last_Name, Street_Address, City_Address, State_Address, Zip_Address, Country_Name, Telephone, Book_Number)
VALUES
    ('Aki', 'Baki', 'Caki', '123 Riccob', 'Tampa', 'TamilNadu', '12345', 'USA', '123-456-7890', 1),
    ('Daki', 'Eaki', 'Faki', '456 Siccob', 'Khammam', 'Andhra', '23456', 'UK', '234-567-8901', 2),
    ('Gaki', 'Haki', 'Iaki', '789 Piccob', 'Kadapa', 'Telangana', '34567', 'India', '345-678-9012', 3),
    ('Jaki', 'Kaki', 'Laki', '012 Aiccob', 'Ongole', 'Bihar', '45678', 'Russia', '456-789-0123', 4),
    ('Maki', 'Naki', 'Oaki', '345 Biccob', 'Warangal', 'Maharastra', '56789', 'China', '567-890-1234', 5);

-- Insert 5 values into the Passenger_Book table
INSERT INTO Passenger_Book (Head_of_Family, Book_Datetime, Passenger_Number)
VALUES
    (1, '2023-01-01', 1),
    (1, '2023-02-01', 2),
    (0, '2023-03-01', 3),
    (0, '2023-04-01', 4),
    (1, '2023-05-01', 5);

-- Insert 5 values into the Cabin table
INSERT INTO Cabin (Passenger_Number, Cruise_Number, Cabin_Number, Fair)
VALUES
    (1, 1, 101, 100.00),
    (2, 2, 102, 150.00),
    (3, 3, 103, 200.00),
    (4, 4, 104, 250.00),
    (5, 5, 105, 300.00);

-- Insert 5 values into the Tour table
INSERT INTO Tour (Tour_Name, Tour_Description, Duration, Price)
VALUES
    ('City Tour', 'A guided tour of the city', 3.50, 50.00),
    ('Tour2', 'good', 2.0, 75.00),
    ('Tour3', 'better', 1.0, 40.00),
    ('Tour4', 'superb', 2.5, 100.00),
    ('Tour5', 'ultimate', 1.5, 60.00);

-- Insert 5 values into the Toured table
INSERT INTO Toured (Passenger_Number, Cruise_Number, Tour_Number, Tour_Datetime)
VALUES
    (1, 1, 1, '2023-01-15'),
    (2, 2, 2, '2023-02-15'),
    (3, 3, 3, '2023-03-15'),
    (4, 4, 4, '2023-04-15'),
    (5, 5, 5, '2023-05-15');
