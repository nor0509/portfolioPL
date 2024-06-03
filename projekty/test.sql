CREATE DATABASE biblioteka;
USE biblioteka;

CREATE TABLE autorzy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(100) NOT NULL,
    nazwisko VARCHAR(100) NOT NULL
);

CREATE TABLE ksiazki (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tytul VARCHAR(255) NOT NULL,
    id_autora INT,
    rok_wydania INT,
    gatunek VARCHAR(100),
    FOREIGN KEY (id_autora) REFERENCES autorzy(id)
);

CREATE TABLE czytelnicy (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imie VARCHAR(100) NOT NULL,
    nazwisko VARCHAR(100) NOT NULL,
    data_urodzenia DATE
);
