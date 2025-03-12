/*
 * This file contains the SQL statements to create the tables for the Uber database.
 *
 * The tables include:
 * - ride: contains information about each ride, including the rider, driver, vehicle, pickup and dropoff times and locations, and fare.
 * - user: contains information about each user, including name, phone number, email, date of birth, gender, pronoun, password, and location.
 * - rider: a table that is a subset of the user table, containing only riders.
 * - driver: a table that is a subset of the user table, containing only drivers.
 * - vehicle: contains information about each vehicle, including the driver, color, model, license plate, and car type.
 * - location: contains information about each location, including the address, x and y coordinates.
 *
 * The primary keys for each table are:
 * - ride: id
 * - user: id
 * - rider: id
 * - driver: id
 * - vehicle: id
 * - location: id
 *
 * The foreign keys for each table are:
 * - ride: rider_id references user(id), driver_id references driver(id), vehicle_id references vehicle(id), pickup_location references location(id), dropoff_location references location(id)
 * - user: location references location(id)
 * - vehicle: driver_id references driver(id)
 */

CREATE TABLE ride (
    id NUMBER PRIMARY KEY,
    rider_id NUMBER NOT NULL,
    driver_id NUMBER NOT NULL,
    vehicle_id NUMBER NOT NULL,
    pickup_time DATE NOT NULL,
    dropoff_time DATE NOT NULL,
    pickup_location NUMBER NOT NULL,
    dropoff_location NUMBER NOT NULL,
    rider_rating FLOAT,
    driver_rating FLOAT,
    price FLOAT,
    status VARCHAR2(50),
    FOREIGN KEY (rider_id) REFERENCES user(id),
    FOREIGN KEY (driver_id) REFERENCES driver(id),
    FOREIGN KEY (vehicle_id) REFERENCES vehicle(id),
    FOREIGN KEY (pickup_location) REFERENCES location(id),
    FOREIGN KEY (dropoff_location) REFERENCES location(id)
);
DROP TABLE ride CASCADE CONSTRAINTS;

CREATE TABLE user (
    id NUMBER PRIMARY KEY,
    roles VARCHAR(50)[],
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    phone_number VARCHAR2(11),
    email VARCHAR2(50),
    dob DATE,
    gender VARCHAR2(10),
    pronoun VARCHAR2(50),
    password VARCHAR2(50) NOT NULL,
    is_active BOOLEAN,
    location NUMBER,
    FOREIGN KEY (location) REFERENCES location(id)
);
DROP TABLE user CASCADE CONSTRAINTS;

CREATE TABLE rider (
    id NUMBER PRIMARY KEY,
    FOREIGN KEY (id) REFERENCES user(id)
);
DROP TABLE rider CASCADE CONSTRAINTS;

CREATE TABLE driver (
    id NUMBER PRIMARY KEY,
    FOREIGN KEY (id) REFERENCES user(id)
);
DROP TABLE driver CASCADE CONSTRAINTS;

CREATE TABLE vehicle (
    id NUMBER PRIMARY KEY,
    driver_id NUMBER,
    color VARCHAR2(50),
    model VARCHAR2(50),
    license_plate VARCHAR2(9) NOT NULL,
    car_type VARCHAR2(50),
    FOREIGN KEY (driver_id) REFERENCES driver(id)
);
DROP TABLE vehicle CASCADE CONSTRAINTS;

CREATE TABLE location (
    id NUMBER PRIMARY KEY,
    address VARCHAR2(100),
    x FLOAT,
    y FLOAT
);
DROP TABLE location CASCADE CONSTRAINTS;

