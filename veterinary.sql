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

INSERT INTO animals(animalid, name, species, breed, dateofbirth, gender, color, ownerid)
VALUES
(1, 'Buddy', 'Dog', 'Golden Retriever', '2020-03-15', 'Male', 'Golden', 1),
(2, 'Whiskers', 'Cat', 'Siamese', '2019-07-22', 'Female', 'Cream', 2),
(3, 'Max', 'Dog', 'German Shepherd', '2018-11-10', 'Male', 'Black/Tan', 3),
(4, 'Bella', 'Dog', 'Labrador', '2021-01-05', 'Female', 'Yellow', 4),
(5, 'Charlie', 'Dog', 'Beagle', '2020-09-30', 'Male', 'Tri-color', 5),
(6, 'Luna', 'Cat', 'Persian', '2019-12-18', 'Female', 'White', 6),
(7, 'Trixie', 'Dog', 'Shitzu', '2020-06-25', 'Feale', 'Brindle', 7),
(8, 'Grayham', 'Cat', 'Maine Coon', '2021-04-12', 'Female', 'Tabby', 8),
(9, 'Simba', 'Cat', 'Bengal', '2020-02-14', 'Male', 'Spotted', 9),
(10, 'Coco', 'Dog', 'Poodle', '2019-08-08', 'Female', 'Brown', 10);

INSERT INTO appointments (appointid, animalid, appointdate, reason)
VALUES
(1, 1, '2023-01-05', 'Checkup'),
(2, 2, '2023-01-10', 'Vaccination'),
(3, 3, '2023-02-02', 'Injury'),
(4, 4, '2023-02-15', 'Dental Cleaning'),
(5, 5, '2023-03-10', 'Skin Irritation'),
(6, 6, '2023-03-10', 'Flea Treatment'),
(7, 7, '2023-04-12', 'Vaccination'),
(8, 8, '2023-04-18', 'Surgery'),
(9, 9, '2023-05-02', 'Allergic Reaction'),
(10, 10, '2023-05-20', 'Eye Checkup');
