# UBER SQL Database Schema

This repository contains the SQL database schema for a hypothetical UBER-like ride-hailing service. The schema is designed to capture the key entities and relationships involved in the service, including users, drivers, vehicles, rides, and locations.

## Database Schema

The database schema is defined in the `UBER.sql` file, which contains the SQL code to create the necessary tables and relationships.

### ERD

The EDR is defined in the `ERD.md` file, which contains the SQL code to create the necessary tables and relationships.


### Entities

The following entities are represented in the schema:

* **Users**: Represented by the `user` table, which stores information about each user, including their ID, name, email, phone number, and password.
* **Drivers**: Represented by the `driver` table, which stores information about each driver, including their ID, name, and vehicle information.
* **Vehicles**: Represented by the `vehicle` table, which stores information about each vehicle, including its ID, make, model, and license plate number.
* **Rides**: Represented by the `ride` table, which stores information about each ride, including its ID, pickup and dropoff locations, and timestamps.
* **Locations**: Represented by the `location` table, which stores information about each location, including its ID, address, and coordinates.

### Relationships

The following relationships are represented in the schema:

* A user can have multiple rides (one-to-many).
* A driver can have multiple vehicles (one-to-many).
* A vehicle can have multiple rides (one-to-many).
* A ride is associated with one pickup location and one dropoff location (many-to-one).



## Contributing
--------------

If you'd like to contribute to this project, please fork the repository and submit a pull request with your changes. Make sure to include a clear description of your changes and any relevant documentation.

## License
-------

This project is licensed under the Creative Commons Zero (CC0) license. See the `LICENSE` file for more information.
