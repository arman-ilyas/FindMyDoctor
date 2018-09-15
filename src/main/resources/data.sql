-- Populate first users
INSERT INTO User (name, id, email, password) VALUES ('John', 1, 'john@gmail.com', 'password');
INSERT INTO User (name, id, email, password) VALUES ('Sam', 2, 'sam@gmail.com', 'password');
INSERT INTO User (name, id, email, password) VALUES ('Samuel', 3, 'samuel@gmail.com', 'password');
INSERT INTO User (name, id, email, password) VALUES ('Lee', 4, 'lee@gmail.com', 'password');
INSERT INTO User (name, id, email, password) VALUES ('Tim', 5, 'tim@gmail.com', 'password');
INSERT INTO User (name, id, email, password) VALUES ('Kim', 6, 'kim@gmail.com', 'password');

-- Populate first patients
INSERT INTO Patient (id, userId, disease) VALUES (1, 1, 'Aagenaes syndrome');
INSERT INTO Patient (id, userId, disease) VALUES (2, 2, 'B cell prolymphocytic leukemia');
INSERT INTO Patient (id, userId, disease) VALUES (3, 3, 'CADASIL');

-- Populate first doctors
INSERT INTO Doctor (id, userId, patientid) VALUES (1, 4, 1);
INSERT INTO Doctor (id, userId, patientid) VALUES (2, 5, 2);
INSERT INTO Doctor (id, userId, patientid) VALUES (3, 6, 3);