-- Populate first users
INSERT INTO User (userName, userId, userEmail, userPassword) VALUES ('John', 1, 'john@gmail.com', 'password');
INSERT INTO User (userName, userId, userEmail, userPassword) VALUES ('Sam', 2, 'sam@gmail.com', 'password');
INSERT INTO User (userName, userId, userEmail, userPassword) VALUES ('Samuel', 3, 'samuel@gmail.com', 'password');
INSERT INTO User (userName, userId, userEmail, userPassword) VALUES ('Lee', 4, 'lee@gmail.com', 'password');
INSERT INTO User (userName, userId, userEmail, userPassword) VALUES ('Tim', 5, 'tim@gmail.com', 'password');
INSERT INTO User (userName, userId, userEmail, userPassword) VALUES ('Kim', 6, 'kim@gmail.com', 'password');

-- Populate first patients
INSERT INTO Patient (patientId, userId, patientDiseaseName) VALUES (1, 1, 'Aagenaes syndrome');
INSERT INTO Patient (patientId, userId, patientDiseaseName) VALUES (2, 2, 'B cell prolymphocytic leukemia');
INSERT INTO Patient (patientId, userId, patientDiseaseName) VALUES (3, 3, 'CADASIL');

-- Populate first doctors
INSERT INTO Doctor (doctorId, userId, patientId) VALUES (1, 4, 1);
INSERT INTO Doctor (doctorId, userId, patientId) VALUES (2, 5, 2);
INSERT INTO Doctor (doctorId, userId, patientId) VALUES (3, 6, 3);