create database test2;

use test2;

CREATE TABLE user (
	first_name VARCHAR(50),
    last_name VARCHAR(50),
    username VARCHAR(50),
    email VARCHAR(50),
    password VARCHAR(50)
);

SELECT * FROM user;

RENAME TABLE user TO users;

SELECT * FROM users;

INSERT INTO users
VALUES ("Carrie", "Noni", "nonijuice", "nonijuice@gmail.com", "juicyfruit2222", "4145677876");

SELECT * FROM users;

INSERT INTO users
VALUES ("Trevor", "Knowles", "knowlett", "knowlett@gmail.com", "GodIsLord777");

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MoneyTeam';

ALTER TABLE users
ADD phone_number VARCHAR(11);

ALTER TABLE users
  DROP COLUMN phone_number;

UPDATE users
SET phone_number = 41439940345
WHERE first_name = "Deangelo";

UPDATE users
SET phone_number = 4149340294
WHERE first_name = "Trevor";

ALTER TABLE users
ADD id_number int NOT Null AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE users
  DROP COLUMN id_number;
  
INSERT INTO users
VALUES ("Carrie", "Noni", "nonijuice", "nonijuice@gmail.com", "juicyfruit2222", "4145677876",3);

SELECT * FROM users;
  
DELETE FROM users
WHERE id_number = 4;

UPDATE users
SET phone_number = "4149236578"
WHERE id_number = 1;

INSERT INTO users (first_name, last_name, username, email, password, phone_number)
VALUES ("Corey", "Gipson", "cj1gipson", "cj1gipson@gmail.com", "MambaMode2408", "4148495876");


