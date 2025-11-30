CREATE DATABASE veterinary;

CREATE TABLE owners(
ownerid INT PRIMARY KEY,
ofirstname VARCHAR(50),
olastname VARCHAR(50),
address VARCHAR(100),
phone VARCHAR(15),
email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    speciality VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount DECIMAL(10,2),
    paymentdate TIME,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate TIMESTAMP,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes TEXT,
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);

INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email)
VALUES
(1, 'Ethan', 'Dela Cruz', 'Manila', '09944663544', 'ethan@gmail.com'),
(2, 'Naja', 'Reyes', 'Quezon City', '09123456782', 'naja@example.com'),
(3, 'Ivy', 'Torres', 'Pasig', '09123456783', 'ivy@example.com'),
(4, 'Nathapon', 'Santos', 'Makati', '09123456784', 'nathapon@example.com'),
(5, 'Arjay', 'Velasco', 'Taguig', '09123456785', 'arjay@example.com'),
(6, 'Fritz', 'Garcia', 'Caloocan', '09123456786', 'fritz@example.com'),
(7, 'Jayson', 'Lopez', 'Pasay', '09123456787', 'jyzn@example.com'),
(8, 'Viel', 'Martinez', 'Mandaluyong', '09123456788', 'viel@example.com'),
(9, 'John Mark', 'Domingo', 'Las Piñas', '09123456789', 'jm@example.com'),
(10, 'Ivan', 'Ramos', 'Parañaque', '09123456780', 'ivan@example.com');