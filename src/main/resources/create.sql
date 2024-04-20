CREATE TABLE Caregivers (
    Username VARCHAR(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Availabilities (
    Time date,
    Username VARCHAR(255) REFERENCES Caregivers,
    PRIMARY KEY (Time, Username)
);

CREATE TABLE Vaccines (
    Name VARCHAR(255),
    Doses int,
    PRIMARY KEY (Name)
);

CREATE TABLE Patients (
    Username VARCHAR(255),
    Salt BINARY(16),
    Hash BINARY(16),
    PRIMARY KEY (Username)
);

CREATE TABLE Appointments (
    Appointment_ID VARCHAR(255),
    Patient_Name VARCHAR(255) REFERENCES Patients(Username),
    Caregiver_Name VARCHAR(255) REFERENCES Caregivers(Username),
    Vaccine_Name VARCHAR(255) REFERENCES Vaccines(Name),
    Time date,
    PRIMARY KEY (Appointment_ID)
);
