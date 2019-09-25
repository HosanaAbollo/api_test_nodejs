DROP DATABASE IF EXISTS apiNode;
CREATE DATABASE apiNode;
USE apiNode;

CREATE TABLE users(
    idUsers INT auto_increment NOT NULL,
    email VARCHAR(50) NOT NULL,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL,
    bio TEXT,
    isAdmin TINYINT DEFAULT 0 NOT NULL,
    PRIMARY KEY(idUser)
);

CREATE TABLE messages(
    idMessages INT auto_increment NOT NULL,
    idUsers INT NOT NULL,
    title VARCHAR(50) NOT NULL,
    content TEXT,
    attachement VARCHAR(120),
    likes INT DEFAULT 0,
    FOREIGN KEY(idUsers) REFERENCES users(idUsers), 
    PRIMARY KEY(idMessages)
):