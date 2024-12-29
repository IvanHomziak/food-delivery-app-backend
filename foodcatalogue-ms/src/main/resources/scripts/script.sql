-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS foodcataloguedb;

-- Switch to the database
-- Use the database
USE foodcataloguedb;

-- Drop the table if it exists
DROP TABLE IF EXISTS food_item;

-- Create the table
CREATE TABLE food_item
(
    id               INT AUTO_INCREMENT PRIMARY KEY,
    item_name        VARCHAR(255) NOT NULL,
    item_description TEXT,
    is_veg           BOOLEAN      NOT NULL,
    price            BIGINT       NOT NULL,
    restaurant_id    INT          NOT NULL,
    quantity         INT          NOT NULL
);


-- Insert data into the `food_item` table
INSERT INTO food_item (item_name, item_description, is_veg, price, restaurant_id, quantity) VALUES
-- Dishes for Pizza Paradise
('Margherita Pizza', 'Classic cheese and tomato pizza.', true, 499, 1, 20),
('Pepperoni Pizza', 'Spicy pepperoni on a cheese base.', false, 699, 1, 15),
('BBQ Chicken Pizza', 'Grilled chicken and BBQ sauce.', false, 799, 1, 10),
('Veggie Supreme Pizza', 'Loaded with fresh vegetables.', true, 599, 1, 25),
('Hawaiian Pizza', 'Ham and pineapple toppings.', false, 749, 1, 12),

-- Dishes for Sushi World
('California Roll', 'Crab, avocado, and cucumber sushi roll.', true, 1200, 2, 30),
('Tempura Shrimp Roll', 'Shrimp tempura with cucumber.', false, 1500, 2, 20),
('Spicy Tuna Roll', 'Tuna with spicy mayo sauce.', false, 1400, 2, 25),
('Veggie Sushi Platter', 'A mix of fresh vegetarian sushi.', true, 1100, 2, 15),
('Dragon Roll', 'Eel, avocado, and cucumber.', false, 1600, 2, 18),

-- Dishes for Burger Haven
('Classic Cheeseburger', 'Juicy beef patty with cheese.', false, 899, 3, 40),
('Veggie Burger', 'Grilled veggie patty.', true, 799, 3, 35),
('Chicken Burger', 'Crispy chicken patty.', false, 849, 3, 25),
('Bacon Cheeseburger', 'Beef patty with crispy bacon.', false, 999, 3, 20),
('Mushroom Swiss Burger', 'Mushrooms and Swiss cheese.', false, 950, 3, 22),

-- Dishes for Taco Fiesta
('Beef Tacos', 'Spicy beef with cheese in taco shell.', false, 599, 4, 50),
('Veggie Tacos', 'Fresh vegetables and salsa.', true, 499, 4, 45),
('Chicken Tacos', 'Grilled chicken with salsa.', false, 549, 4, 40),
('Fish Tacos', 'Crispy fish with tangy sauce.', false, 599, 4, 35),
('Carnitas Tacos', 'Slow-cooked pork with spices.', false, 649, 4, 30),

-- Dishes for Pasta House
('Fettuccine Alfredo', 'Creamy Alfredo sauce pasta.', true, 999, 5, 25),
('Chicken Parmesan', 'Breaded chicken with marinara.', false, 1299, 5, 20),
('Spaghetti Bolognese', 'Rich meat sauce on spaghetti.', false, 1099, 5, 30),
('Pesto Pasta', 'Fresh basil pesto sauce.', true, 899, 5, 22),
('Lasagna', 'Layers of pasta with meat and cheese.', false, 1199, 5, 18),

-- Dishes for Curry Palace
('Butter Chicken', 'Chicken in creamy tomato gravy.', false, 1099, 6, 25),
('Paneer Tikka', 'Grilled paneer with spices.', true, 899, 6, 30),
('Lamb Rogan Josh', 'Slow-cooked lamb in spices.', false, 1299, 6, 20),
('Vegetable Korma', 'Mixed vegetables in rich gravy.', true, 999, 6, 18),
('Chicken Tikka Masala', 'Chicken in spiced tomato sauce.', false, 1199, 6, 22),

-- Dishes for Steak Kingdom
('Filet Mignon', 'Tender beef steak.', false, 3499, 7, 10),
('Ribeye Steak', 'Juicy ribeye with sides.', false, 2999, 7, 15),
('Grilled Chicken', 'Chicken breast with herbs.', false, 1999, 7, 20),
('Vegetable Stir Fry', 'Fresh veggies in soy sauce.', true, 1299, 7, 25),
('Seafood Platter', 'Mix of lobster and shrimp.', false, 3999, 7, 12),

-- Dishes for Seafood Delight
('Grilled Salmon', 'Salmon fillet with herbs.', false, 2499, 8, 18),
('Lobster Tail', 'Grilled lobster with butter.', false, 3999, 8, 10),
('Shrimp Cocktail', 'Chilled shrimp with sauce.', false, 1499, 8, 20),
('Vegan Bowl', 'Quinoa, vegetables, and tofu.', true, 899, 8, 15),
('Clam Chowder', 'Rich and creamy soup.', false, 799, 8, 30);