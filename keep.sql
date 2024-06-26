CREATE DATABASE keep;

CREATE OR REPLACE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  email VARCHAR(255),
  PASSWORD VARCHAR(255)
);

CREATE OR REPLACE TABLE notes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  content TEXT,
  USER INT,
  CONSTRAINT fk FOREIGN KEY (USER) REFERENCES users (id)
);

CREATE OR REPLACE TABLE tugas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  NAME VARCHAR(255),
  STATUS BOOLEAN,
  USER INT,
  CONSTRAINT f FOREIGN KEY (USER) REFERENCES users (id)
);