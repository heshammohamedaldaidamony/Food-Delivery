-- role 
INSERT INTO role (role_id, role_name) 
VALUES 
(1, 'Admin'),
(2, 'Customer'),
(3, 'Seller'),
(4, 'Support'),
(5, 'Manager'),
(6, 'Guest');


-- user 
INSERT INTO user (user_id, email, is_enabled, last_login, login_type, password_hash, phone_number, registration_date, username, verification_code) VALUES
(1, 'john.doe@example.com', 1, '2024-12-20 12:34:56', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-1234', '2024-11-20 10:20:30', 'john_doe', 'ABC123'),
(2, 'jane.smith@example.com', 0, '2024-12-15 08:30:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-5678', '2024-10-18 09:15:00', 'jane_smith', 'XYZ456'),
(3, 'sam.wilson@example.com', 1, '2024-12-18 14:45:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-8765', '2024-12-01 14:10:00', 'sam_wilson', 'LMN789'),
(4, 'michael.brown@example.com', 1, '2024-12-17 16:20:30', 3, '$2y$12$abcdefghijklmnopqrstuvwx', '555-4321', '2024-11-25 13:30:30', 'michael_brown', 'OPQ321'),
(5, 'emily.clark@example.com', 0, '2024-12-10 11:25:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-9876', '2024-09-05 07:40:10', 'emily_clark', 'RST654'),
(6, 'robert.johnson@example.com', 1, '2024-12-18 09:10:15', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-6789', '2024-08-12 16:50:00', 'robert_johnson', 'DEF987'),
(7, 'lucy.harris@example.com', 1, '2024-12-18 18:20:40', 3, '$2y$12$abcdefghijklmnopqrstuvwx', '555-5432', '2024-07-22 15:35:45', 'lucy_harris', 'GHI321'),
(8, 'mark.evans@example.com', 0, '2024-12-16 17:45:30', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-2345', '2024-10-03 12:50:00', 'mark_evans', 'JKL654'),
(9, 'olivia.king@example.com', 1, '2024-12-19 10:00:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-3456', '2024-09-20 09:10:00', 'olivia_king', 'MNO123'),
(10, 'jason.lewis@example.com', 0, '2024-12-14 08:00:00', 3, '$2y$12$abcdefghijklmnopqrstuvwx', '555-7890', '2024-11-10 10:30:00', 'jason_lewis', 'PQR987'),
(11, 'mike.smith@example.com', 1, '2024-12-22 10:00:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-2345679', '2024-12-22 09:00:00', 'mike_smith', 'LMN123'),
(12, 'anna.jones@example.com', 1, '2024-12-22 11:00:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-3456780', '2024-12-22 10:00:00', 'anna_jones', 'OPQ123'),
(13, 'tom.williams@example.com', 1, '2024-12-22 12:00:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-4567891', '2024-12-22 11:00:00', 'tom_williams', 'RST123'),
(14, 'susan.miller@example.com', 1, '2024-12-22 13:00:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-5678902', '2024-12-22 12:00:00', 'susan_miller', 'UVW123'),
(15, 'david.lee@example.com', 1, '2024-12-22 14:00:00', 3, '$2y$12$abcdefghijklmnopqrstuvwx', '555-6789012', '2024-12-22 13:00:00', 'david_lee', 'XYZ123'),
(16, 'andrew.miller@example.com', 1, '2024-12-22 10:30:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-1112233', '2024-11-22 09:20:00', 'andrew_miller', 'ABC123'),
(17, 'sarah.thompson@example.com', 1, '2024-12-22 11:00:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-2223344', '2024-11-23 09:30:00', 'sarah_thompson', 'XYZ456'),
(18, 'daniel.clark@example.com', 0, '2024-12-21 15:20:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-3334455', '2024-11-24 10:15:00', 'daniel_clark', 'LMN789'),
(19, 'olivia.white@example.com', 1, '2024-12-20 09:45:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-4445566', '2024-11-25 11:40:00', 'olivia_white', 'OPQ321'),
(20, 'matthew.harris@example.com', 0, '2024-12-19 14:10:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-5556677', '2024-11-26 12:50:00', 'matthew_harris', 'RST654'),
(21, 'jessica.brown@example.com', 1, '2024-12-18 16:00:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-6667788', '2024-11-27 14:30:00', 'jessica_brown', 'DEF987'),
(22, 'james.roberts@example.com', 1, '2024-12-17 13:35:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-7778899', '2024-11-28 13:20:00', 'james_roberts', 'GHI321'),
(23, 'elizabeth.king@example.com', 0, '2024-12-16 08:50:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-8889900', '2024-11-29 10:40:00', 'elizabeth_king', 'JKL654'),
(24, 'christopher.davis@example.com', 1, '2024-12-15 18:15:00', 1, '$2y$12$abcdefghijklmnopqrstuvwx', '555-9990011', '2024-11-30 09:50:00', 'christopher_davis', 'MNO123'),
(25, 'mia.martin@example.com', 0, '2024-12-14 07:25:00', 2, '$2y$12$abcdefghijklmnopqrstuvwx', '555-0001122', '2024-12-01 08:30:00', 'mia_martin', 'PQR987');


-- user_role
INSERT INTO user_role (role_id, user_id) 
VALUES
(1, 1),
(2, 2),
(6, 2),
(3, 3),
(2, 4),
(3, 5),
(1, 6),
(2, 7),
(5, 7),
(4, 8),
(4, 9),
(5, 10),
(6, 10),
(5, 11),
(5, 12),
(5, 13),
(5, 14),
(5, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25);


-- customer
INSERT INTO customer (customer_id, first_name, last_name, user_id) 
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


-- address
INSERT INTO address (address_id, address_line1, addressline2, city, country, postal_code, customer_id) 
VALUES
(1, '123 Main St', 'Apt 1', 'New York', 'USA', '10001', 1),
(2, '456 Elm St', 'Suite 200', 'Los Angeles', 'USA', '90001', 2),
(3, '789 Oak St', NULL, 'Chicago', 'USA', '60601', 3),
(4, '321 Pine St', 'Building B', 'Houston', 'USA', '77001', 4),
(5, '654 Cedar St', 'Floor 3', 'Miami', 'USA', '33101', 5);


-- cart 
INSERT INTO cart (cart_id, creation_date, is_locked, last_updated, notes, total_amount, customer_id) 
VALUES
(1, '2024-12-01 10:30:00', 0, '2024-12-02 11:00:00', 'First cart', 50.75, 1),
(2, '2024-12-03 12:00:00', 0, '2024-12-03 12:30:00', 'Second cart', 100.00, 2),
(3, '2024-12-04 14:45:00', 1, '2024-12-04 15:00:00', 'Locked cart', 75.50, 3),
(4, '2024-12-05 16:20:00', 0, '2024-12-05 16:45:00', 'Fourth cart', 60.00, 4),
(5, '2024-12-06 09:15:00', 1, '2024-12-06 09:30:00', 'Locked cart again', 125.25, 5);


-- restaurant
INSERT INTO restaurant (restaurant_id, address, name, phone_number, restaurant_details_restaurant_details_id, deleted, address_id, rest_details_id) 
VALUES
(1, '123 Main St', 'Bella Italia', '123-456-7890', NULL, 0, 1, NULL),
(2, '456 Elm St', 'Sushi Heaven', '234-567-8901', NULL, 0, 2, NULL),
(3, '789 Oak St', 'Spice Route', '345-678-9012', NULL, 0, 3, NULL),
(4, '321 Pine St', 'Le Bistro', '456-789-0123', NULL, 0, 4, NULL),
(5, '654 Cedar St', 'El Taco', '567-890-1234', NULL, 0, 5, NULL);

-- restaurant_details
INSERT INTO restaurant_details (restaurant_details_id, capacity, description, restaurant_id, owner_id)
VALUES
(1, 100, 'Cozy Italian Restaurant', 1, 11),
(2, 200, 'Modern Japanese Sushi Bar', 2, 12),
(3, 150, 'Traditional Indian Cuisine', 3, 13),
(4, 120, 'Classic French Bistro', 4, 14),
(5, 180, 'Authentic Mexican Tacos', 5, 15);


-- menu
INSERT INTO menu (menu_id, description, menu_name, restaurant_id)
VALUES
(1, 'A selection of gourmet dishes with fine dining options', 'Gourmet Specialties', 1),
(2, 'Homestyle meals perfect for families and large gatherings', 'Family Favorites', 2),
(3, 'Luxurious fine dining menu with a premium selection of dishes', 'Elite Selection', 3),
(4, 'Healthy, plant-based menu with organic ingredients', 'Plant-Based Delights', 4),
(5, 'Quick and tasty fast food options for people on the go', 'Quick Bites', 5);


-- menu_item
INSERT INTO menu_item (item_id, available, description, item_name, price, quantity, cartitem_id, menu_id, order_id)
VALUES
(1, 1, 'Spicy Chicken Wings', 'Chicken Wings', 9.99, 10, NULL, 1, NULL),
(2, 1, 'Classic Beef Burger', 'Beef Burger', 12.49, 5, NULL, 1, NULL),
(3, 1, 'Caesar Salad with Grilled Chicken', 'Caesar Salad', 8.99, 7, NULL, 1, NULL),
(4, 0, 'Margarita Pizza', 'Pizza', 15.99, 0, NULL, 1, NULL),
(5, 1, 'French Fries with Cheese', 'Fries', 4.99, 15, NULL, 1, NULL),
(6, 1, 'Vegetarian Wrap', 'Wrap', 7.99, 10, NULL, 2, NULL),
(7, 1, 'Grilled Salmon Salad', 'Salmon Salad', 13.49, 8, NULL, 2, NULL),
(8, 1, 'Spaghetti Bolognese', 'Spaghetti', 11.99, 6, NULL, 2, NULL),
(9, 0, 'Margherita Pizza', 'Pizza', 14.99, 0, NULL, 2, NULL),
(10, 1, 'Chicken Tenders', 'Chicken Tenders', 5.99, 20, NULL, 2, NULL),
(11, 1, 'BBQ Ribs', 'Ribs', 16.99, 5, NULL, 3, NULL),
(12, 1, 'Chicken Caesar Wrap', 'Wrap', 9.49, 12, NULL, 3, NULL),
(13, 1, 'Grilled Veggie Pizza', 'Pizza', 13.49, 7, NULL, 3, NULL),
(14, 1, 'Fish and Chips', 'Fish & Chips', 10.99, 10, NULL, 3, NULL),
(15, 0, 'Cheese Quesadilla', 'Quesadilla', 6.99, 0, NULL, 3, NULL),
(16, 1, 'Cheese Burger', 'Cheese Burger', 11.49, 8, NULL, 4, NULL),
(17, 1, 'Buffalo Wings', 'Wings', 8.99, 15, NULL, 4, NULL),
(18, 1, 'Chicken Parmesan', 'Chicken Parm', 14.99, 6, NULL, 4, NULL),
(19, 0, 'Veggie Burger', 'Veggie Burger', 10.49, 0, NULL, 4, NULL),
(20, 1, 'Onion Rings', 'Onion Rings', 3.99, 20, NULL, 4, NULL),
(21, 1, 'Steak with Potatoes', 'Steak', 19.99, 4, NULL, 5, NULL),
(22, 1, 'Pasta Alfredo', 'Pasta', 13.49, 9, NULL, 5, NULL),
(23, 1, 'Chicken Fried Rice', 'Fried Rice', 8.49, 15, NULL, 5, NULL),
(24, 0, 'Shrimp Tacos', 'Tacos', 11.99, 0, NULL, 5, NULL),
(25, 1, 'Spring Rolls', 'Spring Rolls', 5.99, 25, NULL, 5, NULL);



-- cart_item
# cart_item_id	price	quantity	cart_id	menu_item_id
1	12.99	2	1	1
2	8.50	1	1	2
3	7.99	3	1	3
4	6.75	1	1	4
5	5.25	2	1	5
6	11.99	1	2	6
7	9.25	2	2	7
8	8.49	3	2	8
9	6.30	1	2	9
10	5.99	2	2	10
11	14.00	2	3	11
12	7.75	1	3	12
13	10.00	1	3	13
14	9.99	3	3	14
15	4.95	2	3	15
16	12.50	1	4	16
17	9.00	2	4	17
18	7.25	1	4	18
19	6.80	2	4	19
20	8.00	1	4	20
21	10.50	1	5	21
22	8.75	2	5	22
23	9.99	3	5	23
24	6.50	1	5	24
25	7.80	2	5	25


-- order_status
INSERT INTO order_status (order_status_id, description, status_name)
VALUES
(1, 'Order has been received and is being processed', 'Pending'),
(2, 'Order has been confirmed and is being prepared', 'Confirmed'),
(3, 'Order is being delivered', 'In Transit'),
(4, 'Order has been completed successfully', 'Completed'),
(5, 'Order has been canceled', 'Canceled');


-- order
INSERT INTO `order` (order_id, notes, total_item_count, total_item_quantity, total_price, customer_id, address, order_status, restaurant_id, order_status_id)
VALUES
(1, 'First order for customer 1', 3, 5, 45.50, 1, 1, 1, 1),
(2, 'Second order for customer 1', 2, 4, 32.75, 1, 1, 1, 2),
(3, 'Third order for customer 1', 4, 7, 58.60, 1, 2, 1, 3),
(4, 'First order for customer 2', 2, 3, 25.40, 2, 2, 2, 2),
(5, 'Second order for customer 2', 5, 8, 68.00, 2, 2, 2, 1),
(6, 'Third order for customer 2', 3, 6, 48.30, 2, 3, 2, 4),
(7, 'First order for customer 3', 4, 7, 58.60, 3, 3, 3, 5),
(8, 'Second order for customer 3', 6, 10, 84.75, 3, 3, 3, 2),
(9, 'Third order for customer 3', 3, 5, 40.00, 3, 4, 3, 3),
(10, 'First order for customer 4', 2, 4, 36.90, 4, 4, 4, 4),
(11, 'Second order for customer 4', 5, 9, 72.50, 4, 4, 4, 1),
(12, 'Third order for customer 4', 4, 6, 52.20, 4, 5, 4, 2),
(13, 'First order for customer 5', 3, 5, 50.10, 5, 5, 5, 3),
(14, 'Second order for customer 5', 2, 4, 32.80, 5, 5, 5, 1),
(15, 'Third order for customer 5', 4, 7, 60.40, 5, 5, 5, 4);


-- order tracking
INSERT INTO `food-delivery`.`order_tracking` 
(`tracking_id`, `current_location`, `update_time`, `order_id`, `order_status_id`)
VALUES
-- Order 1: Pending -> Confirmed -> In Transit -> Completed
(1, 'Warehouse', '2024-12-01 10:35:00', 1, 1),  -- Pending
(2, 'Kitchen', '2024-12-01 12:00:00', 1, 2),  -- Confirmed
(3, 'Delivery Van', '2024-12-01 14:00:00', 1, 3),  -- In Transit
(4, 'Customer Address', '2024-12-01 15:30:00', 1, 4),  -- Completed

-- Order 2: Pending -> Confirmed -> In Transit -> Completed
(5, 'Warehouse', '2024-12-02 09:00:00', 2, 1),  -- Pending
(6, 'Kitchen', '2024-12-02 11:30:00', 2, 2),  -- Confirmed
(7, 'Delivery Van', '2024-12-02 13:45:00', 2, 3),  -- In Transit
(8, 'Customer Address', '2024-12-02 16:00:00', 2, 4),  -- Completed

-- Order 3: Pending -> Confirmed -> In Transit -> Completed
(9, 'Warehouse', '2024-12-03 10:10:00', 3, 1),  -- Pending
(10, 'Kitchen', '2024-12-03 11:50:00', 3, 2),  -- Confirmed
(11, 'Delivery Van', '2024-12-03 13:10:00', 3, 3),  -- In Transit
(12, 'Customer Address', '2024-12-03 16:20:00', 3, 4),  -- Completed

-- Order 4: Pending -> Confirmed -> Canceled
(13, 'Warehouse', '2024-12-04 08:40:00', 4, 1),  -- Pending
(14, 'Kitchen', '2024-12-04 10:00:00', 4, 2),  -- Confirmed
(15, 'Customer Address', '2024-12-04 12:00:00', 4, 5),  -- Canceled

-- Order 5: Pending -> Canceled (status directly changed)
(16, 'Warehouse', '2024-12-05 11:00:00', 5, 1),  -- Pending
(17, 'Kitchen', '2024-12-05 12:30:00', 5, 5),  -- Canceled

-- Order 6: Pending -> Confirmed -> In Transit -> Completed
(18, 'Warehouse', '2024-12-06 09:30:00', 6, 1),  -- Pending
(19, 'Kitchen', '2024-12-06 11:00:00', 6, 2),  -- Confirmed
(20, 'Delivery Van', '2024-12-06 13:00:00', 6, 3),  -- In Transit
(21, 'Customer Address', '2024-12-06 15:30:00', 6, 4),  -- Completed

-- Order 7: Canceled -> Completed (status changed after cancellation)
(22, 'Warehouse', '2024-12-07 08:00:00', 7, 5),  -- Canceled
(23, 'Customer Address', '2024-12-07 10:00:00', 7, 4),  -- Completed

-- Order 8: Pending -> In Transit -> Completed
(24, 'Warehouse', '2024-12-08 09:15:00', 8, 1),  -- Pending
(25, 'Delivery Van', '2024-12-08 11:30:00', 8, 3),  -- In Transit
(26, 'Customer Address', '2024-12-08 13:30:00', 8, 4),  -- Completed

-- Order 9: In Transit -> Completed
(27, 'Warehouse', '2024-12-09 10:00:00', 9, 3),  -- In Transit
(28, 'Customer Address', '2024-12-09 12:00:00', 9, 4),  -- Completed

-- Order 10: Canceled
(29, 'Warehouse', '2024-12-10 09:45:00', 10, 5),  -- Canceled

-- Order 11: Pending -> Confirmed -> In Transit -> Completed
(30, 'Warehouse', '2024-12-11 10:05:00', 11, 1),  -- Pending
(31, 'Kitchen', '2024-12-11 12:30:00', 11, 2),  -- Confirmed
(32, 'Delivery Van', '2024-12-11 14:10:00', 11, 3),  -- In Transit
(33, 'Customer Address', '2024-12-11 16:00:00', 11, 4),  -- Completed

-- Order 12: Pending -> Confirmed -> In Transit -> Completed
(34, 'Warehouse', '2024-12-12 11:00:00', 12, 1),  -- Pending
(35, 'Kitchen', '2024-12-12 13:30:00', 12, 2),  -- Confirmed
(36, 'Delivery Van', '2024-12-12 15:00:00', 12, 3),  -- In Transit
(37, 'Customer Address', '2024-12-12 17:00:00', 12, 4),  -- Completed

-- Order 13: Pending -> Confirmed -> In Transit -> Completed
(38, 'Warehouse', '2024-12-13 09:20:00', 13, 1),  -- Pending
(39, 'Kitchen', '2024-12-13 11:40:00', 13, 2),  -- Confirmed
(40, 'Delivery Van', '2024-12-13 13:15:00', 13, 3),  -- In Transit
(41, 'Customer Address', '2024-12-13 14:55:00', 13, 4),  -- Completed

-- Order 14: Pending -> Canceled
(42, 'Warehouse', '2024-12-14 09:50:00', 14, 1),  -- Pending
(43, 'Customer Address', '2024-12-14 11:30:00', 14, 5),  -- Canceled

-- Order 15: Pending -> Confirmed -> In Transit -> Completed
(44, 'Warehouse', '2024-12-15 10:15:00', 15, 1),  -- Pending
(45, 'Kitchen', '2024-12-15 12:00:00', 15, 2),  -- Confirmed
(46, 'Delivery Van', '2024-12-15 13:50:00', 15, 3),  -- In Transit
(47, 'Customer Address', '2024-12-15 15:40:00', 15, 4);  -- Completed
-- order_item
INSERT INTO `food-delivery`.`order_item`
(`order_item_id`, `price`, `quantity`, `menu_item_id`, `order_id`)
VALUES
-- Order 1 items (Total 3 items)
(1, 9.99, 2, 1, 1),
(2, 12.49, 1, 2, 1),
(3, 8.99, 2, 3, 1),

-- Order 2 items (Total 2 items)
(4, 9.99, 1, 1, 2),
(5, 12.49, 1, 2, 2),

-- Order 3 items (Total 4 items)
(6, 8.99, 3, 3, 3),
(7, 15.99, 1, 4, 3),
(8, 4.99, 2, 5, 3),
(9, 13.49, 1, 6, 3),

-- Order 4 items (Total 2 items)
(10, 5.99, 1, 7, 4),
(11, 12.49, 2, 8, 4),

-- Order 5 items (Total 5 items)
(12, 11.99, 2, 9, 5),
(13, 13.49, 1, 10, 5),
(14, 8.99, 2, 11, 5),
(15, 6.99, 1, 12, 5),
(16, 14.99, 1, 13, 5),

-- Order 6 items (Total 3 items)
(17, 13.49, 1, 14, 6),
(18, 8.49, 3, 15, 6),
(19, 7.99, 2, 16, 6),

-- Order 7 items (Total 4 items)
(20, 9.99, 1, 17, 7),
(21, 8.99, 1, 18, 7),
(22, 14.99, 1, 19, 7),
(23, 6.49, 2, 20, 7),

-- Order 8 items (Total 6 items)
(24, 12.99, 2, 21, 8),
(25, 7.99, 2, 22, 8),
(26, 8.49, 1, 23, 8),
(27, 10.49, 1, 24, 8),
(28, 5.99, 1, 25, 8),

-- Order 9 items (Total 3 items)
(29, 14.99, 1, 1, 9),
(30, 11.49, 2, 2, 9),
(31, 8.99, 2, 3, 9),

-- Order 10 items (Total 2 items)
(32, 10.99, 1, 4, 10),
(33, 12.49, 1, 5, 10),

-- Order 11 items (Total 5 items)
(34, 5.99, 2, 6, 11),
(35, 12.99, 1, 7, 11),
(36, 9.99, 2, 8, 11),
(37, 11.49, 1, 9, 11),
(38, 13.49, 1, 10, 11),

-- Order 12 items (Total 4 items)
(39, 7.99, 2, 11, 12),
(40, 8.49, 1, 12, 12),
(41, 10.49, 1, 13, 12),
(42, 9.49, 1, 14, 12),

-- Order 13 items (Total 3 items)
(43, 12.99, 1, 15, 13),
(44, 6.99, 2, 16, 13),
(45, 8.49, 2, 17, 13),

-- Order 14 items (Total 2 items)
(46, 6.99, 1, 18, 14),
(47, 7.49, 2, 19, 14),

-- Order 15 items (Total 4 items)
(48, 9.99, 1, 20, 15),
(49, 10.49, 2, 21, 15),
(50, 12.99, 1, 22, 15),
(51, 8.49, 1, 23, 15);


