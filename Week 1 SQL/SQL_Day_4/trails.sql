create database trails;

use trails;

CREATE TABLE animalss (id int, name varchar(20), breed varchar(20), color varchar(20), gender varchar(20), status int);

CREATE TABLE adoptionss (animal_id int, name varchar(20), contact varchar(20));

INSERT INTO animalss (id, name, breed, color, gender, status) VALUES (1, 'Bellyflop', 'Beagle', 'Brown', 'Male', 0);
INSERT INTO animalss (id, name, breed, color, gender, status) VALUES (2, 'Bellyflop', 'Beagle', 'Brown', 'Male', 0);
INSERT INTO animalss (id, name, breed, color, gender, status) VALUES (3, 'Snowy', 'Husky', 'White', 'Female', 0);
INSERT INTO animalss (id, name, breed, color, gender, status) VALUES (4, 'Princess', 'Pomeranian', 'Black', 'Female', 0);
SELECT * FROM animalss;
SELECT name FROM animalss WHERE gender = 'Female';

UPDATE animalss SET color = 'Brown' WHERE id = 3;
INSERT INTO adoptionss (animal_id, name, contact) VALUES (3, 'Pinocchio', 'realboy@c.com');
INSERT INTO adoptionss (animal_id, name, contact) VALUES (1, 'efgh', 'efgh@abc.com');
INSERT INTO adoptionss (animal_id, name, contact) VALUES (2, 'abcd','abcd@abc.com');

SELECT * FROM adoptionss ORDER BY animal_id DESC;

ALTER TABLE animalss ADD species varchar(20);


UPDATE animalss SET species = 'Dog';

DELETE FROM animalss WHERE id = 3;



DROP TABLE animalss;

SELECT * FROM animalss;