
-- Role 
-- Insert roles into the role table with role_id starting from 1
INSERT INTO `role` (`role_id`, `role_name`)
VALUES
(1, 'Admin'),
(2, 'Customer'),
(3, 'RestaurantOwner'),
(4, 'Support'),
(5, 'Manager'),
(6, 'Guest');

-- User 
-- Insert users into the user table with user_id starting from 1
INSERT INTO `user` (`user_id`, `email`, `is_enabled`, `last_login`, `login_type`, `password_hash`, `phone_number`, `registration_date`, `username`, `verification_code`)
VALUES
(1, 'john.doe@example.com', b'1', '2024-12-20 12:34:56', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-1234', '2024-11-20 10:20:30', 'john_doe', 'ABC123'),
(2, 'jane.smith@example.com', b'0', '2024-12-15 08:30:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-5678', '2024-10-18 09:15:00', 'jane_smith', 'XYZ456'),
(3, 'sam.wilson@example.com', b'1', '2024-12-18 14:45:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-8765', '2024-12-01 14:10:00', 'sam_wilson', 'LMN789'),
(4, 'michael.brown@example.com', b'1', '2024-12-17 16:20:30', 3, '$2y$12$abcdefghijklmnopqrstuvwx', '555-4321', '2024-11-25 13:30:30', 'michael_brown', 'OPQ321'),
(5, 'emily.clark@example.com', b'0', '2024-12-10 11:25:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-9876', '2024-09-05 07:40:10', 'emily_clark', 'RST654'),
(6, 'robert.johnson@example.com', b'1', '2024-12-18 09:10:15', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-6789', '2024-08-12 16:50:00', 'robert_johnson', 'DEF987'),
(7, 'lucy.harris@example.com', b'1', '2024-12-18 18:20:40', 3, '$2y$12$abcdefghijklmnopqrstuvwx', '555-5432', '2024-07-22 15:35:45', 'lucy_harris', 'GHI321'),
(8, 'mark.evans@example.com', b'0', '2024-12-16 17:45:30', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-2345', '2024-10-03 12:50:00', 'mark_evans', 'JKL654'),
(9, 'olivia.king@example.com', b'1', '2024-12-19 10:00:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-3456', '2024-09-20 09:10:00', 'olivia_king', 'MNO123'),
(10, 'jason.lewis@example.com', b'0', '2024-12-14 08:00:00', 3, '$2y$12$abcdefghijklmnopqrstuvwx', '555-7890', '2024-11-10 10:30:00', 'jason_lewis', 'PQR987'),
(11, 'mike.smith@example.com', b'1', '2024-12-22 10:00:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-2345679', '2024-12-22 09:00:00', 'mike_smith', 'LMN123'),
(12, 'anna.jones@example.com', b'1', '2024-12-22 11:00:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-3456780', '2024-12-22 10:00:00', 'anna_jones', 'OPQ123'),
(13, 'tom.williams@example.com', b'1', '2024-12-22 12:00:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-4567891', '2024-12-22 11:00:00', 'tom_williams', 'RST123'),
(14, 'susan.miller@example.com', b'1', '2024-12-22 13:00:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-5678902', '2024-12-22 12:00:00', 'susan_miller', 'UVW123'),
(15, 'david.lee@example.com', b'1', '2024-12-22 14:00:00', 3, '$2y$12$abcdefghijklmnopqrstuvwx', '555-6789012', '2024-12-22 13:00:00', 'david_lee', 'XYZ123'),
(16, 'andrew.miller@example.com', b'1', '2024-12-22 10:30:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-1112233', '2024-11-22 09:20:00', 'andrew_miller', 'ABC123'),
(17, 'sarah.thompson@example.com', b'1', '2024-12-22 11:00:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-2223344', '2024-11-23 09:30:00', 'sarah_thompson', 'XYZ456'),
(18, 'daniel.clark@example.com', b'0', '2024-12-21 15:20:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-3334455', '2024-11-24 10:15:00', 'daniel_clark', 'LMN789'),
(19, 'olivia.white@example.com', b'1', '2024-12-20 09:45:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-4445566', '2024-11-25 11:40:00', 'olivia_white', 'OPQ321'),
(20, 'matthew.harris@example.com', b'0', '2024-12-19 14:10:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-5556677', '2024-11-26 12:50:00', 'matthew_harris', 'RST654'),
(21, 'jessica.brown@example.com', b'1', '2024-12-18 16:00:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-6667788', '2024-11-27 14:30:00', 'jessica_brown', 'DEF987'),
(22, 'james.roberts@example.com', b'1', '2024-12-17 13:35:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-7778899', '2024-11-28 13:20:00', 'james_roberts', 'GHI321'),
(23, 'elizabeth.king@example.com', b'0', '2024-12-16 08:50:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-8889900', '2024-11-29 10:40:00', 'elizabeth_king', 'JKL654'),
(24, 'christopher.davis@example.com', b'1', '2024-12-15 18:15:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-9990011', '2024-11-30 09:50:00', 'christopher_davis', 'MNO123'),
(25, 'mia.martin@example.com', b'0', '2024-12-14 07:25:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-0001122', '2024-12-01 08:30:00', 'mia_martin', 'PQR987');


-- User role 
-- Insert into user_role based on roles and users data

-- Assigning roles to users
INSERT INTO `user_role` (role_id, user_id) VALUES 
-- Assigning 'Admin' role to some users
(1, 1), -- John Doe is an Admin
(1, 6), -- Robert Johnson is an Admin

-- Assigning 'Customer' role to some users
(2, 2), -- Jane Smith is a Customer
(2, 4), -- Michael Brown is a Customer
(2, 7), -- Lucy Harris is a Customer

-- Assigning 'Seller' role to some users
(3, 3), -- Sam Wilson is a Seller
(3, 5), -- Emily Clark is a Seller

-- Assigning 'Support' role to some users
(4, 8), -- Mark Evans is Support
(4, 9), -- Olivia King is Support

-- Assigning 'Manager' role to some users
(5, 7), -- Lucy Harris is a Manager
(5, 10), -- Jason Lewis is a Manager

-- Assigning 'Guest' role to some users
(6, 2), -- Jane Smith is also a Guest
(6, 10), -- Jason Lewis is also a Guest
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(2, 16), (2, 17), (2, 18), (2, 19), (2, 20), (2, 21), (2, 22), (2, 23), (2, 24), (2, 25);

-- Restaurant 
-- Insert into restaurant table with restaurant_id starting from 1
INSERT INTO `restaurant` (`restaurant_id`, `address`, `name`, `phone_number`)
VALUES 
(1, '123 Elm Street, Springfield', 'The Gourmet Bistro', '555-1234567'),
(2, '456 Oak Avenue, Riverdale', 'Family Feast', '555-2345678'),
(3, '789 Pine Road, Centerville', 'The Elite Dining', '555-3456789'),
(4, '101 Maple Blvd, Lakeside', 'Health & Harmony', '555-4567890'),
(5, '202 Birch Street, Midtown', 'Fast Bites', '555-5678901');
 
-- Restaurant detail
-- Insert restaurant details with restaurant_details_id starting from 1
INSERT INTO `restaurant_details` (`restaurant_details_id`, `capacity`, `description`, `restaurant_id`, `owner_id`)
VALUES
(1, 50, 'A cozy restaurant offering a variety of gourmet dishes', 1, 11), -- The Gourmet Bistro, owned by user 11
(2, 60, 'Family-friendly restaurant serving a range of home-style meals', 2, 12), -- Family Feast, owned by user 12
(3, 70, 'High-end dining offering a luxurious experience', 3, 13), -- The Elite Dining, owned by user 13
(4, 40, 'A wellness-focused restaurant with healthy menu options', 4, 14), -- Health & Harmony, owned by user 14
(5, 30, 'Fast food restaurant offering quick and tasty meals', 5, 15); -- Fast Bites, owned by user 15


-- Menu 
-- Insert menu for The Gourmet Bistro (Restaurant ID 1) 
INSERT INTO `menu` (`menu_id`, `description`, `menu_name`, `restaurant_id`)
VALUES
(1, 'A selection of gourmet dishes with fine dining options', 'Gourmet Specialties', 1);

-- Insert menu for Family Feast (Restaurant ID 2)
INSERT INTO `menu` (`menu_id`, `description`, `menu_name`, `restaurant_id`)
VALUES
(2, 'Homestyle meals perfect for families and large gatherings', 'Family Favorites', 2);

-- Insert menu for The Elite Dining (Restaurant ID 3)
INSERT INTO `menu` (`menu_id`, `description`, `menu_name`, `restaurant_id`)
VALUES
(3, 'Luxurious fine dining menu with a premium selection of dishes', 'Elite Selection', 3);

-- Insert menu for Health & Harmony (Restaurant ID 4)
INSERT INTO `menu` (`menu_id`, `description`, `menu_name`, `restaurant_id`)
VALUES
(4, 'Healthy, plant-based menu with organic ingredients', 'Plant-Based Delights', 4);

-- Insert menu for Fast Bites (Restaurant ID 5)
INSERT INTO `menu` (`menu_id`, `description`, `menu_name`, `restaurant_id`)
VALUES
(5, 'Quick and tasty fast food options for people on the go', 'Quick Bites', 5);


-- Menu items
-- Insert items for The Gourmet Bistro menu (Menu ID 1)
INSERT INTO `menu_item` (`item_id`, `item_name`, `description`, `price`, `quantity`, `menu_id`)
VALUES
(1, 'Foie Gras', 'Delicate duck liver pâté', 45.00, 50, 1),
(2, 'Lobster Bisque', 'Rich and creamy lobster soup', 28.00, 50, 1),
(3, 'Truffle Risotto', 'Creamy risotto with truffle oil', 38.00, 50, 1),
(4, 'Beef Wellington', 'Tender beef wrapped in puff pastry', 75.00, 50, 1),
(5, 'Grilled Lobster', 'Grilled lobster served with garlic butter', 60.00, 50, 1),
(6, 'Salmon Tartare', 'Fresh salmon served with avocado and a citrus dressing', 22.00, 50, 1),
(7, 'Caviar', 'Premium caviar served with blinis', 100.00, 50, 1),
(8, 'Rack of Lamb', 'Grilled lamb chops with a rosemary crust', 65.00, 50, 1),
(9, 'Seafood Paella', 'Spanish rice dish with seafood and saffron', 55.00, 50, 1),
(10, 'Tuna Tartare', 'Fresh tuna with sesame oil and avocado', 24.00, 50, 1);

-- Insert items for Family Feast menu (Menu ID 2)
INSERT INTO `menu_item` (`item_id`, `item_name`, `description`, `price`, `quantity`, `menu_id`)
VALUES
(11, 'Spaghetti and Meatballs', 'Classic pasta with homemade meatballs', 18.00, 50, 2),
(12, 'Fried Chicken', 'Crispy fried chicken with mashed potatoes', 22.00, 50, 2),
(13, 'Beef Stew', 'Tender beef stewed with vegetables', 25.00, 50, 2),
(14, 'Lasagna', 'Layers of pasta, cheese, and ground beef', 24.00, 50, 2),
(15, 'Chicken Pot Pie', 'Comfort food with creamy chicken and vegetables in a pie crust', 20.00, 50, 2),
(16, 'Mac and Cheese', 'Creamy cheese sauce over pasta', 15.00, 50, 2),
(17, 'BBQ Ribs', 'Slow-cooked ribs with barbecue sauce', 28.00, 50, 2),
(18, 'Grilled Salmon', 'Fresh grilled salmon with lemon butter sauce', 30.00, 50, 2),
(19, 'Vegetable Stir Fry', 'Mixed vegetables stir-fried in soy sauce', 16.00, 50, 2),
(20, 'Chicken Parmesan', 'Breaded chicken topped with marinara and mozzarella', 22.00, 50, 2);

-- Insert items for The Elite Dining menu (Menu ID 3)
INSERT INTO `menu_item` (`item_id`, `item_name`, `description`, `price`, `quantity`, `menu_id`)
VALUES
(21, 'Duck Breast', 'Pan-seared duck breast with a berry reduction', 50.00, 50, 3),
(22, 'Lobster Tail', 'Grilled lobster tail with garlic butter', 45.00, 50, 3),
(23, 'Beef Carpaccio', 'Thinly sliced raw beef with arugula and parmesan', 35.00, 50, 3),
(24, 'Grilled Scallops', 'Perfectly grilled scallops with lemon butter', 40.00, 50, 3),
(25, 'Vegetable Tempura', 'Crispy fried vegetables with dipping sauce', 18.00, 50, 3),
(26, 'Grilled Ribeye', 'Tender ribeye steak grilled to perfection', 60.00, 50, 3),
(27, 'Mushroom Risotto', 'Creamy risotto with wild mushrooms', 32.00, 50, 3),
(28, 'Braised Short Ribs', 'Slow-braised short ribs with mashed potatoes', 48.00, 50, 3),
(29, 'Crab Cakes', 'Pan-seared crab cakes with aioli', 30.00, 50, 3),
(30, 'Chocolate Mousse', 'Rich and velvety chocolate mousse with whipped cream', 15.00, 50, 3);

-- Insert items for Health & Harmony menu (Menu ID 4)
INSERT INTO `menu_item` (`item_id`, `item_name`, `description`, `price`, `quantity`, `menu_id`)
VALUES
(31, 'Quinoa Salad', 'Quinoa with mixed greens, nuts, and vinaigrette', 16.00, 50, 4),
(32, 'Grilled Chicken Salad', 'Grilled chicken with a fresh vegetable salad', 20.00, 50, 4),
(33, 'Vegetarian Wrap', 'Fresh vegetables wrapped in a whole wheat tortilla', 14.00, 50, 4),
(34, 'Avocado Toast', 'Toasted bread with mashed avocado and poached eggs', 12.00, 50, 4),
(35, 'Smoothie Bowl', 'Fruit smoothie topped with granola and berries', 18.00, 50, 4),
(36, 'Tofu Stir Fry', 'Stir-fried tofu with mixed vegetables', 22.00, 50, 4),
(37, 'Zucchini Noodles', 'Zucchini noodles with pesto sauce', 19.00, 50, 4),
(38, 'Chia Pudding', 'Chia seeds soaked in almond milk with fruits', 12.00, 50, 4),
(39, 'Grilled Salmon Salad', 'Grilled salmon served on top of fresh salad', 28.00, 50, 4),
(40, 'Coconut Curry', 'Coconut milk curry with vegetables and rice', 24.00, 50, 4);

-- Insert items for Fast Bites menu (Menu ID 5)
INSERT INTO `menu_item` (`item_id`, `item_name`, `description`, `price`, `quantity`, `menu_id`)
VALUES
(41, 'Cheeseburger', 'Classic cheeseburger with lettuce, tomato, and cheese', 10.00, 50, 5),
(42, 'Fries', 'Crispy golden fries', 4.00, 50, 5),
(43, 'Chicken Nuggets', 'Crispy chicken nuggets served with dipping sauce', 8.00, 50, 5),
(44, 'Hot Dog', 'Classic hot dog served with ketchup and mustard', 6.00, 50, 5),
(45, 'Pizza Margherita', 'Tomato, mozzarella, and basil pizza', 12.00, 50, 5),
(46, 'Grilled Cheese', 'Cheddar cheese melted between two slices of toasted bread', 7.00, 50, 5),
(47, 'Falafel Wrap', 'Falafel served in a pita with tahini sauce', 10.00, 50, 5),
(48, 'Chicken Wrap', 'Grilled chicken in a tortilla wrap', 11.00, 50, 5),
(49, 'Caesar Salad', 'Classic Caesar salad with romaine lettuce and croutons', 9.00, 50, 5),
(50, 'Milkshake', 'Creamy milkshake with vanilla, chocolate, or strawberry flavor', 5.00, 50, 5);





-- customer 
INSERT INTO `customer` (customer_id, first_name, last_name, user_id)
VALUES
(1, 'Andrew', 'Miller', 16),
(2, 'Sarah', 'Thompson', 17),
(3, 'Daniel', 'Clark', 18),
(4, 'Olivia', 'White', 19),
(5, 'Matthew', 'Harris', 20),
(6, 'Jessica', 'Brown', 21),
(7, 'James', 'Roberts', 22),
(8, 'Elizabeth', 'King', 23),
(9, 'Christopher', 'Davis', 24),
(10, 'Mia', 'Martin', 25);


-- cart
INSERT INTO cart (customer_id, creation_date, total_amount, notes, is_locked)
VALUES (1, NOW(), 0.00, 'Cart notes', 0);

-- Retrieve the cart ID of the newly inserted cart
SET @cartId = LAST_INSERT_ID();

-- cart items
INSERT INTO cart_item (cart_id, menu_item_id, quantity, price)
VALUES
    (@cartId, 47, 1, 10.50), -- Cart item for menu_item_id 47
    (@cartId, 48, 2, 20.00), -- Cart item for menu_item_id 48
    (@cartId, 49, 1, 15.00), -- Cart item for menu_item_id 49
    (@cartId, 50, 3, 30.00); -- Cart item for menu_item_id 50

-- Address
INSERT INTO `address` (address_id, address_line1, addressline2, city, country, postal_code, customer_id)
VALUES
(1, '123 Green Street', 'Apt 1', 'Springfield', 'USA', '12345', 1),
(2, '456 Maple Avenue', 'Suite 101', 'Riverdale', 'USA', '23456', 2),
(3, '789 Pine Street', NULL, 'Centerville', 'USA', '34567', 3),
(4, '101 Oak Boulevard', 'Floor 3', 'Lakeside', 'USA', '45678', 4),
(5, '202 Elm Drive', NULL, 'Midtown', 'USA', '56789', 5),
(6, '303 Birch Lane', 'Apt 2B', 'Seaview', 'USA', '67890', 6),
(7, '404 Cedar Court', NULL, 'Brookville', 'USA', '78901', 7),
(8, '505 Walnut Circle', 'Unit 7', 'Hilltown', 'USA', '89012', 8),
(9, '606 Chestnut Avenue', 'Suite 300', 'Meadow City', 'USA', '90123', 9),
(10, '707 Redwood Road', NULL, 'Forestville', 'USA', '01234', 10);


-- Order status
 -- Inserting order statuses with explicit order_status_id values
INSERT INTO `order_status` (order_status_id, description, status_name)
VALUES
(1, 'Order has been received and is being processed', 'Pending'),  -- Status 1: Pending
(2, 'Order has been confirmed and is being prepared', 'Confirmed'),  -- Status 2: Confirmed
(3, 'Order is being delivered', 'In Transit'),  -- Status 3: In Transit
(4, 'Order has been completed successfully', 'Completed'),  -- Status 4: Completed
(5, 'Order has been canceled', 'Canceled');  -- Status 5: Canceled

-- order
-- Customer 1 places multiple orders
INSERT INTO `order` (order_id, notes, order_date, total_amount, customer_id, order_status_id, restaurant_id)
VALUES 
(1, 'No onions, please.', '2024-12-22 10:30:00', 50.00, 1, 1, 1),   -- Order 1
(2, 'Extra cheese, no mushrooms.', '2024-12-22 12:00:00', 60.00, 1, 2, 1),  -- Order 2
(3, 'Add extra sauce.', '2024-12-23 14:15:00', 40.00, 1, 3, 1);   -- Order 3

-- Customer 2 places only one order
INSERT INTO `order` (order_id, notes, order_date, total_amount, customer_id, order_status_id, restaurant_id)
VALUES
(4, 'Vegetarian with no cheese.', '2024-12-21 10:10:00', 30.00, 2, 1, 2);   -- Order 4

-- Customer 4 places one order
INSERT INTO `order` (order_id, notes, order_date, total_amount, customer_id, order_status_id, restaurant_id)
VALUES
(5, 'No tomatoes, please.', '2024-12-20 11:30:00', 25.00, 4, 2, 3);   -- Order 5

-- Customer 5 places only one order
INSERT INTO `order` (order_id, notes, order_date, total_amount, customer_id, order_status_id, restaurant_id)
VALUES
(6, 'Extra spicy with no onions.', '2024-12-19 13:45:00', 55.00, 5, 4, 4);  -- Order 6

-- Customer 6 places multiple orders
INSERT INTO `order` (order_id, notes, order_date, total_amount, customer_id, order_status_id, restaurant_id)
VALUES
(7, 'Add extra mushrooms.', '2024-12-18 14:30:00', 40.00, 6, 3, 1),   -- Order 7
(8, 'Extra bacon, please.', '2024-12-17 15:00:00', 45.00, 6, 2, 2);   -- Order 8

-- Customer 8 places one order
INSERT INTO `order` (order_id, notes, order_date, total_amount, customer_id, order_status_id, restaurant_id)
VALUES
(9, 'No garlic in the food.', '2024-12-16 12:20:00', 50.00, 8, 1, 3);  -- Order 9

-- Customer 9 places many orders
INSERT INTO `order` (order_id, notes, order_date, total_amount, customer_id, order_status_id, restaurant_id)
VALUES
(10, 'No sugar in dessert.', '2024-12-15 10:30:00', 35.00, 9, 5, 4),  -- Order 10
(11, 'Please add extra sauce.', '2024-12-14 11:45:00', 40.00, 9, 4, 5),  -- Order 11
(12, 'Can I get extra olives?', '2024-12-13 14:10:00', 30.00, 9, 3, 5);  -- Order 12

-- Customer 10 places one order
INSERT INTO `order` (order_id, notes, order_date, total_amount, customer_id, order_status_id, restaurant_id)
VALUES
(13, 'Mild, no extra salt.', '2024-12-12 13:00:00', 25.00, 10, 2, 4);   -- Order 13

-- Orders with various order statuses (1 to 5)
INSERT INTO `order` (order_id, notes, order_date, total_amount, customer_id, order_status_id, restaurant_id)
VALUES
(14, 'Order is ready for delivery.', '2024-12-11 09:30:00', 60.00, 1, 1, 1),  -- Status 1: Processing
(15, 'Order shipped, expected arrival soon.', '2024-12-10 14:10:00', 50.00, 2, 2, 2),  -- Status 2: Shipped
(16, 'Awaiting payment.', '2024-12-09 13:20:00', 30.00, 3, 3, 3),  -- Status 3: Awaiting Payment
(17, 'Order canceled by customer.', '2024-12-08 12:00:00', 40.00, 4, 4, 4),  -- Status 4: Canceled
(18, 'Delivered successfully.', '2024-12-07 11:00:00', 70.00, 5, 5, 5);  -- Status 5: Delivered


-- order items
-- Inserting order items for Order 1
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(1, 2, 1, 1),  -- Menu Item 1 for Order 1
(2, 1, 2, 1);  -- Menu Item 2 for Order 1

-- Inserting order items for Order 2
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(3, 3, 3, 2),  -- Menu Item 3 for Order 2
(4, 1, 4, 2);  -- Menu Item 4 for Order 2

-- Inserting order items for Order 3
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(5, 2, 5, 3),  -- Menu Item 5 for Order 3
(6, 1, 6, 3);  -- Menu Item 6 for Order 3

-- Inserting order items for Order 4
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(7, 1, 7, 4),  -- Menu Item 7 for Order 4
(8, 2, 8, 4);  -- Menu Item 8 for Order 4

-- Inserting order items for Order 5
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(9, 2, 9, 5),  -- Menu Item 9 for Order 5
(10, 1, 10, 5);  -- Menu Item 10 for Order 5

-- Inserting order items for Order 6
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(11, 3, 11, 6),  -- Menu Item 11 for Order 6
(12, 1, 12, 6);  -- Menu Item 12 for Order 6

-- Inserting order items for Order 7
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(13, 2, 13, 7),  -- Menu Item 13 for Order 7
(14, 1, 14, 7);  -- Menu Item 14 for Order 7

-- Inserting order items for Order 8
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(15, 2, 15, 8),  -- Menu Item 15 for Order 8
(16, 1, 16, 8);  -- Menu Item 16 for Order 8

-- Inserting order items for Order 9
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(17, 3, 17, 9),  -- Menu Item 17 for Order 9
(18, 1, 18, 9);  -- Menu Item 18 for Order 9

-- Inserting order items for Order 10
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(19, 2, 19, 10),  -- Menu Item 19 for Order 10
(20, 1, 20, 10);  -- Menu Item 20 for Order 10

-- Inserting order items for Order 11
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(21, 1, 21, 11),  -- Menu Item 21 for Order 11
(22, 2, 22, 11);  -- Menu Item 22 for Order 11

-- Inserting order items for Order 12
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(23, 2, 23, 12),  -- Menu Item 23 for Order 12
(24, 1, 24, 12);  -- Menu Item 24 for Order 12

-- Inserting order items for Order 13
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(25, 3, 25, 13),  -- Menu Item 25 for Order 13
(26, 1, 26, 13);  -- Menu Item 26 for Order 13

-- Inserting order items for Order 14
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(27, 2, 27, 14),  -- Menu Item 27 for Order 14
(28, 1, 28, 14);  -- Menu Item 28 for Order 14

-- Inserting order items for Order 15
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(29, 1, 29, 15),  -- Menu Item 29 for Order 15
(30, 2, 30, 15);  -- Menu Item 30 for Order 15

-- Inserting order items for Order 16
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(31, 2, 31, 16),  -- Menu Item 31 for Order 16
(32, 1, 32, 16);  -- Menu Item 32 for Order 16

-- Inserting order items for Order 17
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(33, 1, 33, 17),  -- Menu Item 33 for Order 17
(34, 3, 34, 17);  -- Menu Item 34 for Order 17

-- Inserting order items for Order 18
INSERT INTO `order_item` (order_item_id, quantity, menu_item_id, order_id)
VALUES
(35, 2, 35, 18),  -- Menu Item 35 for Order 18
(36, 1, 36, 18);  -- Menu Item 36 for Order 18


-- order tracking


-- Order 1 (Customer 1, Restaurant 1)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(1, 'Warehouse', '2024-12-20 10:00:00', 1, 1),  -- Order 1: Status = Pending
(2, 'Preparing', '2024-12-20 12:30:00', 1, 2),  -- Order 1: Status = Confirmed
(3, 'In Transit', '2024-12-20 15:00:00', 1, 3),  -- Order 1: Status = In Transit
(4, 'Delivered', '2024-12-20 17:30:00', 1, 5);  -- Order 1: Status = Completed

-- Order 2 (Customer 2, Restaurant 2)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(5, 'Warehouse', '2024-12-20 08:30:00', 2, 1),  -- Order 2: Status = Pending
(6, 'Preparing', '2024-12-20 10:00:00', 2, 2),  -- Order 2: Status = Confirmed
(7, 'In Transit', '2024-12-20 12:00:00', 2, 3),  -- Order 2: Status = In Transit
(8, 'Delivered', '2024-12-20 14:30:00', 2, 5);  -- Order 2: Status = Completed

-- Order 3 (Customer 3, Restaurant 3)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(9, 'Warehouse', '2024-12-20 09:00:00', 3, 1),  -- Order 3: Status = Pending
(10, 'Preparing', '2024-12-20 11:00:00', 3, 4);  -- Order 3: Status = canceled


-- Order 4 (Customer 4, Restaurant 1)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(13, 'Warehouse', '2024-12-20 07:45:00', 4, 1),  -- Order 4: Status = Pending
(14, 'Preparing', '2024-12-20 09:15:00', 4, 2),  -- Order 4: Status = Confirmed
(15, 'In Transit', '2024-12-20 11:45:00', 4, 3),  -- Order 4: Status = In Transit
(16, 'Canceled', '2024-12-20 13:00:00', 4, 4);  -- Order 4: Status = Canceled

-- Order 5 (Customer 5, Restaurant 2)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(17, 'Warehouse', '2024-12-20 09:30:00', 5, 1),  -- Order 5: Status = Pending
(18, 'Preparing', '2024-12-20 11:00:00', 5, 2),  -- Order 5: Status = Confirmed
(19, 'In Transit', '2024-12-20 13:00:00', 5, 3),  -- Order 5: Status = In Transit
(20, 'Delivered', '2024-12-20 15:30:00', 5, 5);  -- Order 5: Status = Completed

-- Order 6 (Customer 6, Restaurant 3)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(21, 'Warehouse', '2024-12-20 11:00:00', 6, 1),  -- Order 6: Status = Pending
(22, 'Preparing', '2024-12-20 13:00:00', 6, 2),  -- Order 6: Status = Confirmed
(23, 'In Transit', '2024-12-20 14:30:00', 6, 3),  -- Order 6: Status = In Transit
(24, 'Delivered', '2024-12-20 16:00:00', 6, 5);  -- Order 6: Status = Completed

-- Order 7 (Customer 7, Restaurant 1)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(25, 'Warehouse', '2024-12-20 10:30:00', 7, 1),  -- Order 7: Status = Pending
(26, 'Preparing', '2024-12-20 12:00:00', 7, 2),  -- Order 7: Status = Confirmed
(27, 'In Transit', '2024-12-20 14:00:00', 7, 3),  -- Order 7: Status = In Transit
(28, 'Delivered', '2024-12-20 16:30:00', 7, 5);  -- Order 7: Status = Completed

-- Order 8 (Customer 8, Restaurant 2)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(29, 'Warehouse', '2024-12-20 08:15:00', 8, 1),  -- Order 8: Status = Pending
(30, 'Preparing', '2024-12-20 10:00:00', 8, 2),  -- Order 8: Status = Confirmed
(31, 'In Transit', '2024-12-20 12:30:00', 8, 3),  -- Order 8: Status = In Transit
(32, 'Canceled', '2024-12-20 14:00:00', 8, 4);  -- Order 8: Status = Canceled

-- Order 9 (Customer 9, Restaurant 3)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(33, 'Warehouse', '2024-12-20 09:00:00', 9, 1),  -- Order 9: Status = Pending
(34, 'Preparing', '2024-12-20 11:00:00', 9, 2),  -- Order 9: Status = Confirmed
(35, 'In Transit', '2024-12-20 13:30:00', 9, 3),  -- Order 9: Status = In Transit
(36, 'Delivered', '2024-12-20 15:30:00', 9, 5);  -- Order 9: Status = Completed

-- Order 10 (Customer 10, Restaurant 1)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(37, 'Warehouse', '2024-12-20 08:45:00', 10, 1),  -- Order 10: Status = Pending
(38, 'Preparing', '2024-12-20 10:30:00', 10, 4);  -- Order 10: Status = canceled

-- Order 11 (Customer 11, Restaurant 2)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(41, 'Warehouse', '2024-12-20 08:00:00', 11, 1),  -- Order 11: Status = Pending
(42, 'Preparing', '2024-12-20 09:30:00', 11, 2),  -- Order 11: Status = Confirmed
(43, 'In Transit', '2024-12-20 11:30:00', 11, 3),  -- Order 11: Status = In Transit
(44, 'Canceled', '2024-12-20 13:00:00', 11, 4);  -- Order 11: Status = Canceled

-- Order 12 (Customer 12, Restaurant 3)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(45, 'Warehouse', '2024-12-20 07:30:00', 12, 1),  -- Order 12: Status = Pending
(46, 'Preparing', '2024-12-20 09:00:00', 12, 2),  -- Order 12: Status = Confirmed
(47, 'In Transit', '2024-12-20 10:30:00', 12, 3),  -- Order 12: Status = In Transit
(48, 'Delivered', '2024-12-20 12:30:00', 12, 5);  -- Order 12: Status = Completed

-- Order 13 (Customer 13, Restaurant 1)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(49, 'Warehouse', '2024-12-20 09:00:00', 13, 1),  -- Order 13: Status = Pending
(50, 'Preparing', '2024-12-20 10:30:00', 13, 2),  -- Order 13: Status = Confirmed
(51, 'In Transit', '2024-12-20 12:30:00', 13, 3),  -- Order 13: Status = In Transit
(52, 'Delivered', '2024-12-20 14:00:00', 13, 5);  -- Order 13: Status = Completed

-- Order 14 (Customer 14, Restaurant 2)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(53, 'Warehouse', '2024-12-20 08:30:00', 14, 1),  -- Order 14: Status = Pending
(54, 'Preparing', '2024-12-20 10:00:00', 14, 2),  -- Order 14: Status = Confirmed
(55, 'In Transit', '2024-12-20 11:30:00', 14, 3),  -- Order 14: Status = In Transit
(56, 'Canceled', '2024-12-20 13:30:00', 14, 4);  -- Order 14: Status = Canceled

-- Order 15 (Customer 15, Restaurant 3)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(57, 'Warehouse', '2024-12-20 10:15:00', 15, 1),  -- Order 15: Status = Pending
(58, 'Preparing', '2024-12-20 12:00:00', 15, 2),  -- Order 15: Status = Confirmed
(59, 'In Transit', '2024-12-20 13:45:00', 15, 3),  -- Order 15: Status = In Transit
(60, 'Delivered', '2024-12-20 16:00:00', 15, 5);  -- Order 15: Status = Completed

-- Order 16 (Customer 16, Restaurant 1)
INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(61, 'Warehouse', '2024-12-20 07:00:00', 16, 1),  -- Order 16: Status = Pending
(62, 'Preparing', '2024-12-20 08:30:00', 16, 2),  -- Order 16: Status = Confirmed
(63, 'In Transit', '2024-12-20 10:00:00', 16, 3),  -- Order 16: Status = In Transit
(64, 'Delivered', '2024-12-20 12:00:00', 16, 5);  -- Order 16: Status = Completed

INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(65, 'Warehouse', '2024-12-20 07:00:00', 17, 1),  -- Order 16: Status = Pending
(66, 'Preparing', '2024-12-20 08:30:00', 17, 2),  -- Order 16: Status = Confirmed
(67, 'In Transit', '2024-12-20 10:00:00', 17, 3),  -- Order 16: Status = In Transit
(68, 'Delivered', '2024-12-20 12:00:00', 17, 5);  -- Order 16: Status = Completed

INSERT INTO `order_tracking` (tracking_id, current_location, update_time, order_id, order_status_id)
VALUES
(69, 'Warehouse', '2024-12-20 07:00:00', 18, 1),  -- Order 16: Status = Pending
(70, 'Preparing', '2024-12-20 08:30:00', 18, 4);  -- Order 16: Status = canceled

