DROP TABLE IF EXISTS `User`;
CREATE TABLE User (
name VARCHAR(255) NOT NULL UNIQUE,
id bigint(20) NOT NULL AUTO_INCREMENT,
email VARCHAR(100) NOT NULL,
password VARCHAR(64) NOT NULL,
PRIMARY KEY(id)
) DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Patient`;
CREATE TABLE Patient (
id bigint(20) NOT NULL AUTO_INCREMENT,
userId bigint(20) NOT NULL,
disease VARCHAR(255) NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(userId) REFERENCES User(id)
) DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Doctor`;
CREATE TABLE Doctor (
id MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
userId MEDIUMINT UNSIGNED,
patientid MEDIUMINT UNSIGNED,
PRIMARY KEY(id),
FOREIGN KEY(userId) REFERENCES User(id),
FOREIGN KEY(patientid) REFERENCES Patient(id)
) DEFAULT CHARSET=utf8;

-- DROP TABLE IF EXISTS `DoctorToPatientInfo`;
-- CREATE TABLE DoctorToPatientInfo (
-- doctorId MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT,
-- id MEDIUMINT NOT NULL UNSIGNED,
-- PRIMARY KEY(doctorId),
-- FOREIGN KEY(id) REFERENCES User(id));