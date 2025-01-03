-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS userdb;

-- Switch to the database
-- Use the database
USE userdb;

-- Drop the table if it exists
DROP TABLE IF EXISTS user;

-- Create the user table
CREATE TABLE IF NOT EXISTS user (
                                    user_id INT AUTO_INCREMENT PRIMARY KEY,
                                    user_name VARCHAR(255) NOT NULL,
                                    user_password VARCHAR(255) NOT NULL,
                                    address VARCHAR(255),
                                    city VARCHAR(100)
);



-- Insert data into the `food_item` table
INSERT INTO user (user_id, user_name, user_password, address, city) VALUES
    (1, 'Jack Sparrow', 'password', '28th Ave', 'New York')