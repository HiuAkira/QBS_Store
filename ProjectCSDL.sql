
CREATE TABLE Customer (
    Customer_ID int auto_increment PRIMARY KEY ,
    Customer_Name VARCHAR(255) NOT NULL,
    Phone_number VARCHAR(20),
    Email VARCHAR(255),
    Age INT,
    Address VARCHAR(255)
);

-- Create Product table
CREATE TABLE Product (
    Product_ID int auto_increment PRIMARY KEY,
    Product_Name VARCHAR(255) NOT NULL,
    Price decimal(10,2),
    TypeProduct VARCHAR(255),
    star_avg decimal(10,1),
    Description text
);

-- Create Rating table
CREATE TABLE Rating (
    Rate_id int auto_increment primary key,
    Customer_ID INT,
    Product_ID INT,
    Rate_star INT,
    comment text,
    rate_time TIMESTAMP,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);
CREATE TABLE OrderBill (
    Order_id int auto_increment PRIMARY KEY,
    Customer_ID INT,
    Product_ID INT,
    Order_quantity INT,
    Total_money decimal(10,2),
    Payment_method VARCHAR(255),
    Time_Order TIMESTAMP,
    status_order varchar(255), 
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);
-- Create Inventory table
CREATE TABLE Inventory (
    inventory_Id int auto_increment PRIMARY KEY,
    Product_ID INT,
    product_quantity INT,
    latest_update DATE,
    FOREIGN KEY (Product_ID) REFERENCES Product(Product_ID)
);

-- Insert sample data into Customer table
INSERT INTO Customer (Customer_Name, Phone_number, email, Age, Address) VALUES
('John Doe', '123-456-7890', 'john.doe@example.com', 30, '123 Elm St, Springfield'),
('Jane Smith', '098-765-4321', 'jane.smith@example.com', 25, '456 Oak St, Shelbyville'),
('Alice Johnson', '555-123-4567', 'alice.johnson@example.com', 28, '789 Pine St, Springfield'),
('Bob Brown', '444-987-6543', 'bob.brown@example.com', 35, '101 Maple St, Shelbyville'),
('Charlie Davis', '333-876-5432', 'charlie.davis@example.com', 40, '202 Birch St, Springfield'),
('Daniel Evans', '222-765-4321', 'daniel.evans@example.com', 45, '303 Cedar St, Shelbyville'),
('Eve Foster', '111-654-3210', 'eve.foster@example.com', 50, '404 Walnut St, Springfield'),
('Frank Green', '999-543-2109', 'frank.green@example.com', 32, '505 Cherry St, Shelbyville'),
('Grace Hill', '888-432-1098', 'grace.hill@example.com', 27, '606 Fir St, Springfield'),
('Hank Ingram', '777-321-0987', 'hank.ingram@example.com', 29, '707 Willow St, Shelbyville'),
('Olivia Martinez', '444-111-2222', 'olivia.martinez@example.com', 28, '1314 Maple St, Springfield'),
('Sophia Garcia', '555-222-3333', 'sophia.garcia@example.com', 32, '1415 Elm St, Shelbyville'),
('James Robinson', '666-333-4444', 'james.robinson@example.com', 26, '1516 Oak St, Springfield'),
('Charlotte Johnson', '777-444-5555', 'charlotte.johnson@example.com', 35, '1617 Pine St, Shelbyville'),
('Michael Walker', '888-555-6666', 'michael.walker@example.com', 29, '1718 Cedar St, Springfield'),
('Daniel Young', '999-666-7777', 'daniel.young@example.com', 40, '1819 Birch St, Springfield'),
('Emily Harris', '000-777-8888', 'emily.harris@example.com', 22, '1920 Fir St, Shelbyville'),
('Alexander Allen', '111-888-9999', 'alexander.allen@example.com', 36, '2021 Walnut St, Springfield'),
('Ava King', '222-999-0000', 'ava.king@example.com', 28, '2122 Cherry St, Shelbyville'),
('William Wright', '333-000-1111', 'william.wright@example.com', 33, '2223 Pine St, Springfield'),
('Ethan Baker', '123-456-1234', 'ethan.baker@example.com', 31, '2324 Maple St, Springfield'),
('Mason Wilson', '234-567-2345', 'mason.wilson@example.com', 23, '2526 Elm St, Shelbyville'),
('Logan Hall', '345-678-3456', 'logan.hall@example.com', 45, '2728 Oak St, Springfield'),
('Lucas Allen', '456-789-4567', 'lucas.allen@example.com', 38, '2930 Pine St, Shelbyville'),
('Jacob Clark', '567-890-5678', 'jacob.clark@example.com', 27, '3132 Cedar St, Springfield'),
('Michael Martinez', '678-901-6789', 'michael.martinez@example.com', 50, '3334 Birch St, Shelbyville'),
('Sebastian Turner', '789-012-7890', 'sebastian.turner@example.com', 34, '3536 Fir St, Springfield'),
('Zoe Adams', '890-123-8901', 'zoe.adams@example.com', 26, '3738 Walnut St, Shelbyville'),
('Natalie Scott', '901-234-9012', 'natalie.scott@example.com', 37, '3940 Cherry St, Springfield'),
('Liam Phillips', '012-345-0123', 'liam.phillips@example.com', 43, '4142 Pine St, Shelbyville'),
('Alice Johnson', '123-456-7890', 'alice.johnson@example.com', 28, '123 Maple Street'),
('Bob Smith', '234-567-8901', 'bob.smith@example.com', 35, '456 Oak Avenue'),
('Charlie Brown', '345-678-9012', 'charlie.brown@example.com', 22, '789 Pine Road'),
('Diana Prince', '456-789-0123', 'diana.prince@example.com', 30, '101 Elm Street'),
('Ethan Hunt', '567-890-1234', 'ethan.hunt@example.com', 40, '202 Birch Lane'),
('Fiona Apple', '678-901-2345', 'fiona.apple@example.com', 27, '303 Cedar Boulevard'),
('George Martin', '789-012-3456', 'george.martin@example.com', 50, '404 Spruce Way'),
('Hannah Montana', '890-123-4567', 'hannah.montana@example.com', 18, '505 Fir Drive'),
('Ian McKellen', '901-234-5678', 'ian.mckellen@example.com', 75, '606 Redwood Path'),
('Jack Sparrow', '012-345-6789', 'jack.sparrow@example.com', 45, '707 Cypress Circle'),
('Karen Page', '111-222-3333', 'karen.page@example.com', 32, '808 Palm Terrace'),
('Leo DiCaprio', '222-333-4444', 'leo.dicaprio@example.com', 38, '909 Willow Walk'),
('Megan Fox', '333-444-5555', 'megan.fox@example.com', 34, '1010 Chestnut Place'),
('Nathan Drake', '444-555-6666', 'nathan.drake@example.com', 29, '1111 Poplar Lane'),
('Olivia Wilde', '555-666-7777', 'olivia.wilde@example.com', 37, '1212 Dogwood Court'),
('Peter Parker', '666-777-8888', 'peter.parker@example.com', 23, '1313 Magnolia Street'),
('Quinn Fabray', '777-888-9999', 'quinn.fabray@example.com', 26, '1414 Lilac Road'),
('Rachel Green', '888-999-0000', 'rachel.green@example.com', 31, '1515 Azalea Avenue'),
('Steve Rogers', '999-000-1111', 'steve.rogers@example.com', 39, '1616 Ivy Lane'),
('Tony Stark', '000-111-2222', 'tony.stark@example.com', 48, '1717 Clover Road'),
('Ursula Andress', '111-222-3334', 'ursula.andress@example.com', 83, '1818 Rose Street'),
('Vin Diesel', '222-333-4445', 'vin.diesel@example.com', 52, '1919 Tulip Drive'),
('Wanda Maximoff', '333-444-5556', 'wanda.maximoff@example.com', 28, '2020 Daisy Way'),
('Xander Cage', '444-555-6667', 'xander.cage@example.com', 30, '2121 Lotus Lane'),
('Yara Greyjoy', '555-666-7778', 'yara.greyjoy@example.com', 25, '2222 Poppy Place'),
('Zachary Levi', '666-777-8889', 'zachary.levi@example.com', 42, '2323 Sunflower Boulevard'),
('Angela Merkel', '777-888-9990', 'angela.merkel@example.com', 65, '2424 Peony Path'),
('Bruce Wayne', '888-999-0001', 'bruce.wayne@example.com', 41, '2525 Dandelion Drive'),
('Clark Kent', '999-000-1112', 'clark.kent@example.com', 35, '2626 Marigold Court'),
('Daisy Ridley', '000-111-2223', 'daisy.ridley@example.com', 30, '2727 Hibiscus Street');


-- Insert sample data into Product table
INSERT INTO Product (Product_Name, Price, TypeProduct, Description) VALUES
('ASUS ROG Zephyrus G14 Gaming Laptop', 799.99, 'Electronics', 'A high-performance gaming laptop with AMD Ryzen processor and NVIDIA GeForce graphics.'),
('iPhone 13 Pro Max', 699.99, 'Electronics', 'Latest model smartphone from Apple with A15 Bionic chip and Pro camera system.'),
('Samsung Galaxy Tab S7', 499.99, 'Electronics', 'A premium Android tablet with S Pen and 120Hz display.'),
('Sony WH-1000XM4 Noise Cancelling Headphones', 199.99, 'Electronics', 'Premium noise-cancelling headphones with LDAC and Dual Noise Sensor technology.'),
('Apple Watch Series 7', 299.99, 'Electronics', 'Latest Apple smartwatch with larger Always-On Retina display and advanced health features.'),
('Canon EOS R5 Mirrorless Camera', 999.99, 'Electronics', 'Professional-grade mirrorless camera with 45MP full-frame sensor and 8K video recording.'),
('HP OfficeJet Pro 9015e All-in-One Printer', 149.99, 'Electronics', 'Wireless all-in-one printer with smart app and self-healing Wi-Fi.'),
('LG 27UK850-W 27-Inch 4K UHD IPS Monitor', 249.99, 'Electronics', '27-inch 4K UHD monitor with HDR10 and USB-C connectivity.'),
('Logitech G Pro X Mechanical Gaming Keyboard', 49.99, 'Electronics', 'Mechanical gaming keyboard with customizable RGB lighting and GX Blue Clicky switches.'),
('Logitech MX Master 3 Wireless Mouse', 39.99, 'Electronics', 'Advanced wireless mouse with MagSpeed scrolling and ergonomic design.'),
('PlayStation 5', 499.99, 'Electronics', 'Next-gen gaming console with ultra-high-speed SSD and ray tracing.'),
('Sony WF-1000XM4 Wireless Earbuds', 149.99, 'Electronics', 'Premium noise-cancelling true wireless earbuds with LDAC technology.'),
('Nest Learning Thermostat', 199.99, 'Electronics', 'Smart thermostat with learning capabilities and remote control via smartphone.'),
('Fitbit Charge 5 Fitness and Health Tracker', 99.99, 'Electronics', 'Advanced fitness tracker with built-in GPS and EDA sensor.'),
('Philips Sonicare DiamondClean Electric Toothbrush', 79.99, 'Personal Care', 'Premium electric toothbrush with five cleaning modes and smart sensor technology.'),
('Dyson Supersonic Hair Dryer', 49.99, 'Personal Care', 'High-speed hair dryer with intelligent heat control and magnetic attachments.'),
('Vitamix 5200 Blender', 39.99, 'Kitchen Appliances', 'Professional-grade blender with variable speed control and aircraft-grade stainless steel blades.'),
('Keurig K-Elite Single Serve Coffee Maker', 89.99, 'Kitchen Appliances', 'Premium coffee maker with strong brew and iced coffee settings.'),
('Ninja Foodi 8-Quart Air Fryer', 129.99, 'Kitchen Appliances', 'Versatile air fryer with multiple cooking functions and XL capacity.'),
('Cuisinart CPK-17 PerfecTemp Electric Kettle', 29.99, 'Kitchen Appliances', 'Stainless steel electric kettle with six preset heat settings and Keep Warm option.'),
('Dyson V11 Torque Drive Cordless Vacuum Cleaner', 149.99, 'Home Appliances', 'Powerful cordless vacuum cleaner with intelligent suction and LCD screen.'),
('Panasonic NN-SN966S Microwave Oven', 199.99, 'Kitchen Appliances', 'Countertop microwave oven with Inverter technology and Genius Sensor.'),
('Bosch 300 Series Dishwasher', 499.99, 'Kitchen Appliances', 'Quiet and energy-efficient dishwasher with flexible third rack and RackMatic system.'),
('LG WM4000HWA Front Load Washing Machine', 699.99, 'Home Appliances', 'High-efficiency front-load washing machine with TurboWash technology and Steam technology.'),
('Samsung RF28R7201SR French Door Refrigerator', 999.99, 'Home Appliances', 'Large capacity French door refrigerator with Twin Cooling Plus and FlexZone drawer.'),
('LG LP1419IVSM Portable Air Conditioner', 299.99, 'Home Appliances', 'Smart Wi-Fi enabled portable air conditioner with dual inverter compressor and auto swing louvers.'),
('Dyson Hot + Cool Jet Focus Fan Heater', 59.99, 'Home Appliances', 'Bladeless fan heater with intelligent thermostat and Jet Focus control.'),
('Cuisinart CPT-180P1 Metal Classic 4-Slice Toaster', 19.99, 'Kitchen Appliances', '4-slice toaster with dual control panels and extra-wide slots.'),
('KitchenAid KHM512ER 5-Speed Hand Mixer', 59.99, 'Kitchen Appliances', 'Compact and lightweight hand mixer with stainless steel Turbo Beater accessories.'),
('Zojirushi NS-ZCC10 Neuro Fuzzy Rice Cooker', 39.99, 'Kitchen Appliances', 'Advanced rice cooker with fuzzy logic technology and spherical inner cooking pan.'),
('Apple iPhone 13', 799.00, 'Electronics', 'Latest model of Apple iPhone with A15 Bionic chip.'),
('Samsung Galaxy S21', 699.99, 'Electronics', 'Samsung flagship smartphone with AMOLED display.'),
('Sony WH-1000XM4', 349.99, 'Electronics', 'Noise-cancelling over-ear headphones.'),
('Dell XPS 13', 999.99, 'Computers', '13-inch laptop with Intel Core i7 processor.'),
('MacBook Air', 1099.00, 'Computers', 'Apple M1 chip with 8-core CPU and 7-core GPU.'),
('Nintendo Switch', 299.99, 'Gaming', 'Portable gaming console with detachable controllers.'),
('PlayStation 5', 499.99, 'Gaming', 'Next-gen gaming console with 4K gaming support.'),
('Xbox Series X', 499.99, 'Gaming', 'Microsoft next-gen gaming console with high performance.'),
('Logitech MX Master 3', 99.99, 'Electronics', 'Advanced wireless mouse with ergonomic design.'),
('Apple Watch Series 7', 399.00, 'Electronics', 'Latest Apple smartwatch with always-on display.'),
('Fitbit Charge 5', 179.99, 'Electronics', 'Fitness and health tracker with built-in GPS.'),
('Canon EOS R5', 3899.00, 'Cameras', 'Full-frame mirrorless camera with 45MP sensor.'),
('Sony Alpha a7 III', 1999.99, 'Cameras', 'Full-frame mirrorless camera with 24.2MP sensor.'),
('GoPro HERO9', 399.99, 'Cameras', 'Action camera with 5K video recording capability.'),
('Nikon Z6 II', 1996.95, 'Cameras', 'Full-frame mirrorless camera with dual EXPEED 6 processors.'),
('Samsung QLED TV', 1199.99, 'Home Entertainment', '55-inch QLED 4K Smart TV with HDR.'),
('LG OLED TV', 1399.99, 'Home Entertainment', '55-inch OLED 4K Smart TV with Dolby Vision.'),
('Bose SoundLink Revolve', 199.00, 'Home Entertainment', 'Portable Bluetooth speaker with 360-degree sound.'),
('Sonos One', 199.99, 'Home Entertainment', 'Smart speaker with built-in voice control.'),
('Amazon Echo Dot', 49.99, 'Home Entertainment', 'Compact smart speaker with Alexa.'),
('Instant Pot Duo', 89.99, 'Kitchen Appliances', '7-in-1 electric pressure cooker with multiple functions.'),
('Dyson V11', 599.99, 'Home Appliances', 'Cordless vacuum cleaner with powerful suction.'),
('Keurig K-Elite', 149.99, 'Kitchen Appliances', 'Single serve coffee maker with iced coffee capability.'),
('Ninja Air Fryer', 129.99, 'Kitchen Appliances', '4-quart air fryer with multiple cooking functions.'),
('KitchenAid Stand Mixer', 379.99, 'Kitchen Appliances', '5-quart tilt-head stand mixer with 10 speeds.'),
('Philips Hue Starter Kit', 199.99, 'Smart Home', 'Smart lighting starter kit with 4 bulbs and bridge.'),
('Ring Video Doorbell', 99.99, 'Smart Home', 'Video doorbell with motion detection and HD video.'),
('Google Nest Thermostat', 129.99, 'Smart Home', 'Smart thermostat with energy-saving features.'),
('TP-Link Kasa Smart Plug', 19.99, 'Smart Home', 'Smart plug with voice control and energy monitoring.'),
('August Smart Lock', 229.99, 'Smart Home', 'Smart lock with keyless entry and remote access.'),
('Organic Apples', 3.99, 'Groceries', 'Fresh organic apples, 1 lb bag.'),
('Bananas', 0.59, 'Groceries', 'Ripe yellow bananas, price per lb.'),
('Whole Milk', 2.99, 'Groceries', '1 gallon of whole milk.'),
('Brown Eggs', 4.49, 'Groceries', '1 dozen organic brown eggs.'),
('Greek Yogurt', 1.99, 'Groceries', 'Single serving Greek yogurt, various flavors.'),
('Cheddar Cheese', 5.99, 'Groceries', '1 lb block of aged cheddar cheese.'),
('Chicken Breast', 6.99, 'Groceries', 'Boneless, skinless chicken breast, price per lb.'),
('Ground Beef', 4.99, 'Groceries', '1 lb of ground beef, 85% lean.'),
('Broccoli', 2.49, 'Groceries', 'Fresh broccoli, price per lb.'),
('Carrots', 1.99, 'Groceries', '2 lb bag of organic carrots.'),
('Tomatoes', 2.99, 'Groceries', 'Fresh tomatoes, price per lb.'),
('Spinach', 3.49, 'Groceries', '1 lb bag of fresh spinach.'),
('Bread', 2.99, 'Groceries', 'Whole grain sandwich bread, 1 loaf.'),
('Peanut Butter', 4.99, 'Groceries', '16 oz jar of creamy peanut butter.'),
('Orange Juice', 3.99, 'Groceries', '1 gallon of fresh orange juice.'),
('Pasta', 1.49, 'Groceries', '1 lb of dry spaghetti pasta.'),
('Rice', 2.99, 'Groceries', '2 lb bag of white rice.'),
('Olive Oil', 7.99, 'Groceries', '16 oz bottle of extra virgin olive oil.'),
('Salt', 0.99, 'Groceries', '1 lb of iodized salt.'),
('Black Pepper', 2.99, 'Groceries', '4 oz jar of ground black pepper.'),
('Cereal', 3.99, 'Groceries', '18 oz box of breakfast cereal.'),
('Butter', 2.99, 'Groceries', '1 lb of unsalted butter.'),
('Honey', 6.99, 'Groceries', '12 oz jar of organic honey.'),
('Coffee', 9.99, 'Groceries', '1 lb bag of ground coffee.'),
('Tea', 4.99, 'Groceries', '20 bag box of green tea.'),
('Chocolate', 2.49, 'Groceries', '3.5 oz bar of dark chocolate.'),
('Almonds', 8.99, 'Groceries', '1 lb bag of raw almonds.'),
('Tuna', 1.49, 'Groceries', '5 oz can of tuna in water.'),
('Tomato Sauce', 1.99, 'Groceries', '16 oz jar of tomato sauce.'),
('Chips', 3.49, 'Groceries', '12 oz bag of potato chips.');

INSERT INTO OrderBill (Customer_ID, Product_ID, Order_quantity, Total_money, Payment_method, Time_Order, status_order) VALUES
(43, 38, 3, 932.87, 'Debit Card', '2024-06-02 20:41:30', 'pending'),
(57, 28, 2, 456.88, 'Cash on Delivery', '2024-06-01 18:29:45', 'delivered'),
(8, 60, 4, 324.76, 'PayPal', '2024-06-01 15:20:18', 'in-transit'),
(32, 14, 5, 842.65, 'Credit Card', '2024-05-31 14:18:55', 'pending'),
(54, 82, 1, 654.32, 'Bank Transfer', '2024-05-30 12:57:22', 'delivered'),
(23, 89, 3, 198.76, 'Cash on Delivery', '2024-05-29 11:48:09', 'in-transit'),
(39, 72, 5, 932.87, 'Debit Card', '2024-05-28 10:40:56', 'pending'),
(11, 33, 2, 145.65, 'PayPal', '2024-05-27 09:35:41', 'delivered'),
(29, 7, 4, 642.76, 'Credit Card', '2024-05-26 08:27:28', 'in-transit'),
(16, 25, 1, 456.88, 'Cash on Delivery', '2024-05-25 07:15:15', 'pending'),
(47, 43, 3, 324.76, 'Bank Transfer', '2024-05-24 06:03:02', 'delivered'),
(3, 48, 5, 842.65, 'Debit Card', '2024-05-23 05:40:49', 'in-transit'),
(21, 41, 2, 654.32, 'PayPal', '2024-05-22 04:29:36', 'pending'),
(59, 80, 4, 198.76, 'Credit Card', '2024-05-21 03:18:23', 'delivered'),
(49, 72, 5, 932.87, 'Cash on Delivery', '2024-05-20 02:07:10', 'in-transit'),
(34, 34, 1, 145.65, 'Debit Card', '2024-05-19 00:56:57', 'pending'),
(56, 3, 3, 642.76, 'Bank Transfer', '2024-05-17 23:45:44', 'delivered'),
(12, 35, 5, 456.88, 'Credit Card', '2024-05-16 22:34:31', 'in-transit'),
(25, 47, 2, 324.76, 'Cash on Delivery', '2024-05-15 21:23:18', 'pending'),
(36, 62, 4, 842.65, 'PayPal', '2024-05-14 20:12:05', 'delivered'),
(4, 68, 1, 654.32, 'Credit Card', '2024-05-13 18:59:52', 'in-transit'),
(53, 81, 2, 198.76, 'Bank Transfer', '2024-05-12 17:48:39', 'pending'),
(31, 77, 5, 932.87, 'Debit Card', '2024-05-11 16:37:26', 'delivered'),
(19, 3, 1, 145.65, 'Cash on Delivery', '2024-05-10 15:26:13', 'in-transit'),
(42, 74, 3, 642.76, 'PayPal', '2024-05-09 14:15:00', 'pending'),
(10, 75, 5, 456.88, 'Credit Card', '2024-05-08 13:03:47', 'delivered'),
(45, 81, 2, 324.76, 'Bank Transfer', '2024-05-07 11:52:34', 'in-transit'),
(15, 55, 4, 842.65, 'Debit Card', '2024-05-06 10:41:21', 'pending'),
(28, 59, 1, 654.32, 'Cash on Delivery', '2024-05-05 09:30:08', 'delivered'),
(48, 20, 2, 198.76, 'PayPal', '2024-05-04 08:18:55', 'in-transit'),
(51, 67, 5, 932.87, 'Credit Card', '2024-05-03 07:07:42', 'pending'),
(7, 71, 1, 145.65, 'Cash on Delivery', '2024-05-02 05:56:29', 'delivered'),
(60, 2, 3, 642.76, 'Bank Transfer', '2024-05-01 04:45:16', 'in-transit'),
(35, 10, 5, 456.88, 'Credit Card', '2024-04-30 03:34:03', 'pending'),
(24, 8, 2, 324.76, 'Cash on Delivery', '2024-04-29 02:22:50', 'delivered'),
(17, 5, 4, 842.65, 'PayPal', '2024-04-28 01:11:37', 'delivered'),
(58, 4, 1, 654.32, 'Credit Card', '2024-04-27 00:00:24', 'pending'),
(55, 90, 3, 198.76, 'Bank Transfer', '2024-04-25 22:49:11', 'intransit'),
(13, 25, 5, 932.87, 'Debit Card', '2024-04-24 21:37:58', 'delivered'),
(26, 15, 1, 145.65, 'Cash on Delivery', '2024-04-23 20:26:45', 'pending'),
(50, 49, 3, 642.76, 'PayPal', '2024-04-22 19:15:32', 'intransit'),
(14, 38, 5, 456.88, 'Credit Card', '2024-04-21 18:04:19', 'delivered'),
(27, 30, 2, 324.76, 'Bank Transfer', '2024-04-20 16:53:06', 'pending'),
(33, 18, 4, 842.65, 'Cash on Delivery', '2024-04-19 15:41:53', 'intransit'),
(20, 12, 1, 654.32, 'Debit Card', '2024-04-18 14:30:40', 'delivered'),
(1, 90, 3, 198.76, 'Credit Card', '2024-04-17 13:19:27', 'pending'),
(46, 41, 5, 932.87, 'PayPal', '2024-04-16 12:08:14', 'intransit'),
(37, 52, 1, 145.65, 'Bank Transfer', '2024-04-15 10:57:01', 'delivered'),
(52, 77, 3, 642.76, 'Cash on Delivery', '2024-04-14 09:45:48', 'pending'),
(44, 53, 5, 456.88, 'Credit Card', '2024-04-13 08:34:35', 'intransit'),
(2, 56, 2, 324.76, 'Debit Card', '2024-04-12 07:23:22', 'delivered'),
(22, 80, 4, 842.65, 'PayPal', '2024-04-11 06:12:09', 'pending'),
(9, 61, 1, 654.32, 'Credit Card', '2024-04-10 05:00:56', 'intransit'),
(18, 85, 2, 198.76, 'Bank Transfer', '2024-04-09 03:49:43', 'delivered'),
(38, 58, 5, 932.87, 'Cash on Delivery', '2024-04-08 02:38:30', 'pending'),
(40, 70, 1, 145.65, 'Debit Card', '2024-04-07 01:27:17', 'intransit'),
(6, 45, 3, 642.76, 'Credit Card', '2024-04-06 00:16:04', 'delivered'),
(41, 79, 5, 456.88, 'PayPal', '2024-04-04 23:04:51', 'pending'),
(5, 83, 2, 324.76, 'Bank Transfer', '2024-04-03 21:53:38', 'intransit'),
(19, 87, 4, 842.65, 'Cash on Delivery', '2024-04-02 20:42:25', 'delivered'),
(42, 24, 1, 654.32, 'Credit Card', '2024-04-01 19:31:12', 'pending'),
(45, 39, 3, 198.76, 'Debit Card', '2024-03-31 18:19:59', 'intransit'),
(11, 48, 5, 932.87, 'PayPal', '2024-03-30 17:08:46', 'delivered'),
(32, 36, 2, 145.65, 'Credit Card', '2024-03-29 15:57:33', 'pending'),
(54, 70, 4, 642.76, 'Bank Transfer', '2024-03-28 14:46:20', 'intransit'),
(23, 45, 1, 456.88, 'Cash on Delivery', '2024-03-27 13:35:07', 'delivered'),
(39, 67, 3, 324.76, 'Debit Card', '2024-03-26 12:23:54', 'pending'),
(9, 71, 5, 842.65, 'PayPal', '2024-03-25 11:12:41', 'intransit'),
(32, 76, 1, 654.32, 'Credit Card', '2024-03-24 10:01:28', 'delivered'),
(5, 29, 3, 198.76, 'Bank Transfer', '2024-03-23 08:50:15', 'pending'),
(17, 33, 5, 932.87, 'Cash on Delivery', '2024-03-22 07:39:02', 'intransit'),
(51, 55, 2, 145.65, 'Debit Card', '2024-03-21 06:27:49', 'delivered'),
(47, 65, 4, 642.76, 'PayPal', '2024-03-20 05:16:36', 'pending'),
(53, 81, 5, 456.88, 'Credit Card', '2024-03-19 04:05:23', 'intransit'),
(15, 17, 1, 324.76, 'Cash on Delivery', '2024-03-18 02:54:10', 'delivered'),
(24, 88, 3, 842.65, 'Bank Transfer', '2024-03-17 01:42:57', 'pending'),
(58, 13, 1, 654.32, 'Cash on Delivery', '2024-03-16 00:31:44', 'intransit'),
(21, 59, 4, 198.76, 'Debit Card', '2024-03-14 23:20:31', 'delivered'),
(48, 82, 2, 932.87, 'PayPal', '2024-03-13 22:09:18', 'pending'),
(29, 47, 5, 145.65, 'Credit Card', '2024-03-12 20:58:05', 'intransit'),
(8, 84, 3, 642.76, 'Bank Transfer', '2024-03-11 19:46:52', 'delivered'),
(12, 22, 1, 456.88, 'Cash on Delivery', '2024-03-10 18:35:39', 'delivered'),
(36, 60, 3, 324.76, 'Debit Card', '2024-03-09 17:24:26', 'in transit'),
(31, 26, 5, 842.65, 'PayPal', '2024-03-08 16:13:13', 'pending'),
(19, 35, 2, 654.32, 'Credit Card', '2024-03-07 15:02:00', 'delivered'),
(43, 75, 4, 198.76, 'Bank Transfer', '2024-03-06 13:50:47', 'in transit'),
(25, 73, 1, 932.87, 'Cash on Delivery', '2024-03-05 12:39:34', 'pending'),
(49, 25, 3, 145.65, 'Debit Card', '2024-03-04 11:28:21', 'delivered'),
(10, 43, 5, 642.76, 'PayPal', '2024-03-03 10:17:08', 'in transit'),
(37, 61, 2, 456.88, 'Credit Card', '2024-03-02 09:05:55', 'pending'),
(55, 57, 4, 324.76, 'Bank Transfer', '2024-03-01 07:54:42', 'delivered'),
(57, 49, 1, 842.65, 'Cash on Delivery', '2024-02-29 06:43:29', 'in transit'),
(16, 72, 3, 654.32, 'Debit Card', '2024-02-28 05:32:16', 'pending'),
(20, 46, 5, 198.76, 'PayPal', '2024-02-27 04:21:03', 'delivered'),
(33, 21, 1, 932.87, 'Credit Card', '2024-02-26 03:09:50', 'in transit'),
(59, 19, 3, 145.65, 'Bank Transfer', '2024-02-25 01:58:37', 'pending'),
(54, 51, 5, 642.76, 'Cash on Delivery', '2024-02-24 00:47:24', 'delivered'),
(26, 15, 2, 456.88, 'Debit Card', '2024-02-22 23:36:11', 'in transit'),
(27, 8, 4, 324.76, 'PayPal', '2024-02-21 22:24:58', 'pending'),
(30, 11, 1, 842.65, 'Credit Card', '2024-02-20 21:13:45', 'delivered'),
(3, 86, 3, 654.32, 'Bank Transfer', '2024-02-19 20:02:32', 'in transit'),
(35, 34, 5, 198.76, 'Cash on Delivery', '2024-02-18 18:51:19', 'pending'),
(4, 44, 1, 932.87, 'Debit Card', '2024-02-17 17:40:06', 'delivered'),
(47, 65, 3, 145.65, 'PayPal', '2024-02-16 16:28:53', 'in transit'),
(38, 30, 5, 642.76, 'Credit Card', '2024-02-15 15:17:40', 'pending'),
(56, 56, 2, 456.88, 'Bank Transfer', '2024-02-14 14:06:27', 'delivered'),
(46, 82, 4, 324.76, 'Cash on Delivery', '2024-02-13 12:55:14', 'in transit'),
(14, 72, 1, 842.65, 'Debit Card', '2024-02-12 11:44:01', 'pending'),
(13, 59, 3, 654.32, 'PayPal', '2024-02-11 10:32:48', 'delivered'),
(18, 78, 5, 198.76, 'Credit Card', '2024-02-10 09:21:35', 'in transit'),
(48, 16, 1, 932.87, 'Bank Transfer', '2024-02-09 08:10:22', 'pending'),
(22, 45, 3, 145.65, 'Cash on Delivery', '2024-02-08 06:59:09', 'delivered'),
(1, 32, 5, 642.76, 'Debit Card', '2024-02-07 05:47:56', 'in transit'),
(50, 43, 2, 456.88, 'PayPal', '2024-02-06 04:36:43', 'pending'),
(7, 76, 4, 324.76, 'Credit Card', '2024-02-05 03:25:30', 'delivered'),
(42, 21, 1, 842.65, 'Bank Transfer', '2024-02-04 02:14:17', 'in transit'),
(28, 11, 3, 654.32, 'Cash on Delivery', '2024-02-03 01:03:04', 'pending'),
(24, 66, 5, 198.76, 'Debit Card', '2024-02-02 23:51:51', 'delivered'),
(17, 88, 1, 932.87, 'PayPal', '2024-02-01 22:40:38', 'in transit'),
(40, 43, 3, 145.65, 'Credit Card', '2024-01-31 21:29:25', 'pending'),
(34, 59, 5, 642.76, 'Bank Transfer', '2024-01-30 20:18:12', 'delivered'),
(15, 25, 2, 456.88, 'Cash on Delivery', '2024-01-29 19:06:59', 'in transit'),
(2, 17, 4, 324.76, 'Debit Card', '2024-01-28 17:55:46', 'pending'),
(58, 87, 1, 842.65, 'PayPal', '2024-01-27 16:44:33', 'delivered'),
(52, 67, 3, 654.32, 'Credit Card', '2024-01-26 15:33:20', 'in transit'),
(53, 32, 5, 198.76, 'Bank Transfer', '2024-01-25 14:22:07', 'pending'),
(29, 45, 1, 932.87, 'Cash on Delivery', '2024-01-24 13:10:54', 'delivered'),
(60, 25, 3, 145.65, 'Debit Card', '2024-01-23 11:59:41', 'in transit'),
(6, 37, 5, 642.76, 'PayPal', '2024-01-22 10:48:28', 'pending'),
(16, 45, 2, 456.88, 'Credit Card', '2024-01-21 09:37:15', 'delivered'),
(11, 62, 4, 324.76, 'Bank Transfer', '2024-01-20 08:26:02', 'in transit'),
(21, 76, 1, 842.65, 'Cash on Delivery', '2024-01-19 07:14:49', 'pending'),
(39, 39, 3, 654.32, 'Debit Card', '2024-01-18 06:03:36', 'delivered'),
(48, 41, 5, 198.76, 'PayPal', '2024-01-17 04:52:23', 'delivered'),
(31, 58, 1, 932.87, 'Credit Card', '2024-01-16 03:41:10', 'delivered'),
(26, 74, 3, 145.65, 'Bank Transfer', '2024-01-15 02:29:57', 'delivered'),
(37, 80, 5, 642.76, 'Cash on Delivery', '2024-01-14 01:18:44', 'delivered'),
(28, 90, 2, 456.88, 'Debit Card', '2024-01-13 00:07:31', 'delivered'),
(45, 88, 4, 324.76, 'PayPal', '2024-01-11 22:56:18', 'delivered'),
(18, 45, 1, 842.65, 'Credit Card', '2024-01-10 21:45:05', 'delivered'),
(10, 52, 3, 654.32, 'Bank Transfer', '2024-01-09 20:33:52', 'delivered'),
(3, 67, 5, 198.76, 'Cash on Delivery', '2024-01-08 19:22:39', 'delivered'),
(9, 80, 1, 932.87, 'Debit Card', '2024-01-07 18:11:26', 'intransit'),
(22, 61, 3, 145.65, 'PayPal', '2024-01-06 17:00:13', 'intransit'),
(57, 33, 5, 642.76, 'Credit Card', '2024-01-05 15:49:00', 'pending'),
(54, 44, 2, 456.88, 'Bank Transfer', '2024-01-04 14:37:47', 'pending'),
(12, 49, 4, 324.76, 'Cash on Delivery', '2024-01-03 13:26:34', 'pending'),
(25, 55, 1, 842.65, 'Debit Card', '2024-01-02 12:15:21', 'pending'),
(33, 39, 3, 654.32, 'PayPal', '2024-01-01 11:04:08', 'pending'),
(42, 58, 5, 198.76, 'Credit Card', '2023-12-31 09:52:55', 'pending');

INSERT INTO Rating (Customer_ID, Product_ID, rate_star, comment, rate_time) VALUES
(25, 1, 5, 'Excellent product!', '2024-05-01 10:00:00'),
(42, 2, 4, 'Very good smartphone', '2024-05-02 11:00:00'),
(12, 3, 5, 'Highly recommend', '2024-05-03 12:00:00'),
(53, 4, 3, 'Good quality but pricey', '2024-05-04 13:00:00'),
(36, 5, 4, 'Nice features', '2024-05-05 14:00:00'),
(18, 6, 5, 'Amazing camera', '2024-05-06 15:00:00'),
(9, 7, 4, 'Works well', '2024-05-07 16:00:00'),
(57, 8, 5, 'Great monitor', '2024-05-08 17:00:00'),
(12, 1, 5, 'Amazing laptop, super fast!', '2024-05-02 10:00:00'),
(22, 2, 4, 'Great phone but a bit expensive.', '2024-05-03 11:30:00'),
(33, 3, 3, 'Good tablet but battery life could be better.', '2024-05-04 12:45:00'),
(41, 4, 5, 'Best headphones I have ever used.', '2024-05-05 14:00:00'),
(51, 5, 4, 'Nice smartwatch with useful features.', '2024-05-06 15:30:00'),
(6, 6, 5, 'Excellent camera with high resolution.', '2024-05-07 16:45:00'),
(1, 7, 3, 'Decent printer but a bit slow.', '2024-05-08 18:00:00'),
(18, 8, 4, 'Great monitor for the price.', '2024-05-09 19:30:00'),
(29, 9, 5, 'Fantastic mechanical keyboard.', '2024-05-10 20:45:00'),
(10, 10, 4, 'Good mouse, but could be more ergonomic.', '2024-05-11 22:00:00'),
(11, 11, 5, 'Amazing gaming console!', '2024-05-12 23:30:00'),
(2, 12, 4, 'Great earbuds, love the noise cancellation.', '2024-05-13 08:00:00'),
(3, 13, 5, 'Smart thermostat is very convenient.', '2024-05-14 09:30:00'),
(1, 14, 3, 'Fitness tracker is okay, but had issues syncing.', '2024-05-15 10:45:00'),
(1, 15, 5, 'Best electric toothbrush I have ever used.', '2024-05-16 12:00:00'),
(6, 16, 4, 'Powerful hair dryer, works well.', '2024-05-17 13:30:00'),
(7, 17, 5, 'Excellent blender, very powerful.', '2024-05-18 14:45:00'),
(1, 18, 4, 'Good coffee maker, but could be faster.', '2024-05-19 16:00:00'),
(1, 19, 5, 'Fantastic air fryer, makes cooking easy.', '2024-05-20 17:30:00'),
(20, 20, 3, 'Electric kettle works fine but gets hot on the outside.', '2024-05-21 18:45:00'),
(2, 21, 5, 'Vacuum cleaner is very efficient.', '2024-05-22 10:00:00'),
(22, 22, 4, 'Good microwave oven with many features.', '2024-05-23 11:30:00'),
(2, 23, 5, 'Dishwasher is quiet and effective.', '2024-05-24 12:45:00'),
(24, 24, 5, 'Washing machine works perfectly.', '2024-05-25 14:00:00'),
(5, 25, 4, 'Refrigerator is spacious and cools well.', '2024-05-26 15:30:00'),
(6, 26, 3, 'Air conditioner cools well but is noisy.', '2024-05-27 16:45:00'),
(27, 27, 5, 'Heater is perfect for cold nights.', '2024-05-28 18:00:00'),
(28, 28, 4, 'Toaster works fine but is small.', '2024-05-29 19:30:00'),
(9, 29, 5, 'Mixer is great for baking.', '2024-05-30 20:45:00'),
(10, 30, 5, 'Rice cooker is very convenient.', '2024-05-31 22:00:00'),
(3, 31, 5, 'Apple iPhone 13 is fantastic.', '2024-06-01 23:30:00'),
(3, 32, 4, 'Samsung Galaxy S21 is good, but the battery could last longer.', '2024-06-02 08:00:00'),
(3, 33, 5, 'Sony WH-1000XM4 has amazing sound quality.', '2024-06-03 09:30:00'),
(31, 34, 4, 'Dell XPS 13 is a great laptop but a bit pricey.', '2024-06-04 10:45:00'),
(5, 35, 5, 'MacBook Air is the best laptop I have ever used.', '2024-06-05 12:00:00'),
(6, 36, 5, 'Nintendo Switch is very fun to play.', '2024-06-06 13:30:00'),
(7, 37, 4, 'PlayStation 5 is great but hard to find in stock.', '2024-06-07 14:45:00'),
(3, 38, 5, 'Xbox Series X is a powerhouse.', '2024-06-08 16:00:00'),
(39, 39, 5, 'Logitech MX Master 3 is the best mouse I have used.', '2024-06-09 17:30:00'),
(40, 40, 5, 'Apple Watch Series 7 is fantastic.', '2024-06-10 18:45:00'),
(41, 41, 4, 'Fitbit Charge 5 is good but a bit bulky.', '2024-06-11 10:00:00'),
(4, 42, 5, 'Canon EOS R5 is an amazing camera.', '2024-06-12 11:30:00'),
(3, 43, 5, 'Sony Alpha a7 III takes stunning photos.', '2024-06-13 12:45:00'),
(4, 44, 5, 'GoPro HERO9 is perfect for action shots.', '2024-06-14 14:00:00'),
(45, 45, 5, 'Nikon Z6 II is a fantastic camera.', '2024-06-15 15:30:00'),
(30, 9, 3, 'Decent keyboard', '2024-05-09 18:00:00'),
(52, 10, 4, 'Good value for money', '2024-05-10 19:00:00'),
(16, 21, 5, 'Efficient and powerful!', '2024-11-01 10:00:00'),
(58, 22, 4, 'Very useful kitchen tool', '2024-11-02 11:00:00'),
(6, 23, 5, 'Cleans dishes perfectly', '2024-11-03 12:00:00'),
(33, 24, 4, 'Excellent washing machine', '2024-11-04 13:00:00'),
(25, 25, 5, 'Spacious and efficient', '2024-11-05 14:00:00'),
(44, 26, 4, 'Cools room quickly', '2024-11-06 15:00:00'),
(56, 27, 3, 'Heats up fast', '2024-11-07 16:00:00'),
(10, 28, 5, 'Clean and safe water', '2024-11-08 17:00:00'),
(49, 29, 4, 'Very versatile', '2024-11-09 18:00:00'),
(28, 30, 3, 'Toasts evenly', '2024-11-10 19:00:00'),
(21, 31, 5, 'Amazing product, highly recommend!', '2024-01-01 10:00:00'),
(38, 32, 4, 'Great phone, but a bit pricey.', '2024-01-02 11:00:00'),
(55, 33, 3, 'Good sound quality but uncomfortable for long use.', '2024-01-03 12:00:00'),
(2, 34, 5, 'Excellent laptop for work and play.', '2024-01-04 13:00:00'),
(59, 35, 4, 'Very smooth performance, but battery life could be better.', '2024-01-05 14:00:00'),
(18, 36, 5, 'Fun gaming console for all ages.', '2024-01-06 15:00:00'),
(4, 37, 4, 'Great graphics, but limited stock availability.', '2024-01-07 16:00:00'),
(31, 38, 4, 'Amazing console, but too bulky.', '2024-01-08 17:00:00'),
(57, 39, 5, 'Best mouse I have ever used.', '2024-01-09 18:00:00'),
(8, 40, 5, 'Perfect smartwatch with all necessary features.', '2024-01-10 19:00:00'),
(48, 41, 4, 'Good fitness tracker but expensive.', '2024-01-11 20:00:00'),
(16, 42, 5, 'Outstanding camera for professionals.', '2024-01-12 21:00:00'),
(45, 43, 4, 'Great camera but with a steep learning curve.', '2024-01-13 22:00:00'),
(13, 44, 5, 'Perfect for capturing adventures.', '2024-01-14 23:00:00'),
(19, 45, 4, 'Excellent performance but a bit heavy.', '2024-01-15 09:00:00'),
(5, 46, 5, 'Stunning picture quality and features.', '2024-01-16 10:00:00'),
(23, 47, 5, 'Best TV on the market.', '2024-01-17 11:00:00'),
(32, 48, 4, 'Great speaker with excellent sound.', '2024-01-18 12:00:00'),
(39, 49, 4, 'Good smart speaker, but a bit overpriced.', '2024-01-19 13:00:00'),
(20, 50, 3, 'Decent smart speaker but limited functionality.', '2024-01-20 14:00:00'),
(22, 51, 5, 'Must-have kitchen appliance.', '2024-01-21 15:00:00'),
(15, 52, 5, 'Makes cleaning a breeze.', '2024-01-22 16:00:00'),
(40, 53, 4, 'Good coffee maker but loud.', '2024-01-23 17:00:00'),
(55, 54, 5, 'Great for healthy cooking.', '2024-01-24 18:00:00'),
(18, 55, 5, 'Best stand mixer for baking.', '2024-01-25 19:00:00'),
(23, 56, 4, 'Very convenient and easy to use.', '2024-01-26 20:00:00'),
(53, 57, 4, 'Good doorbell, but connectivity issues.', '2024-01-27 21:00:00'),
(9, 58, 5, 'Energy-saving and user-friendly.', '2024-01-28 22:00:00'),
(29, 59, 4, 'Works well but setup was tricky.', '2024-01-29 23:00:00'),
(51, 60, 5, 'Highly secure and reliable.', '2024-01-30 09:00:00'),
(3, 61, 5, 'Fresh and delicious apples, perfect for snacks!', '2024-02-01 08:00:00'),
(26, 62, 4, 'Good bananas, but some were overripe.', '2024-02-02 09:00:00'),
(8, 63, 5, 'High quality milk, very fresh.', '2024-02-03 10:00:00'),
(13, 64, 5, 'Organic eggs with rich flavor, worth the price.', '2024-02-04 11:00:00'),
(42, 65, 4, 'Tasty yogurt with great variety of flavors.', '2024-02-05 12:00:00'),
(20, 66, 5, 'Excellent cheddar cheese, perfect for sandwiches.', '2024-02-06 13:00:00'),
(6, 67, 5, 'Fresh chicken breast, cooks very well.', '2024-02-07 14:00:00'),
(35, 68, 4, 'Good quality ground beef, but a bit fatty.', '2024-02-08 15:00:00'),
(50, 69, 5, 'Crisp and fresh broccoli, very nutritious.', '2024-02-09 16:00:00'),
(14, 70, 4, 'Sweet carrots, perfect for salads.', '2024-02-10 17:00:00'),
(39, 71, 5, 'Juicy and flavorful tomatoes.', '2024-02-11 18:00:00'),
(1, 72, 5, 'Fresh spinach, great for smoothies.', '2024-02-12 19:00:00'),
(47, 73, 4, 'Good whole grain bread, but goes stale quickly.', '2024-02-13 20:00:00'),
(19, 74, 5, 'Creamy and smooth peanut butter.', '2024-02-14 21:00:00'),
(30, 75, 4, 'Fresh orange juice, very refreshing.', '2024-02-15 22:00:00'),
(25, 76, 4, 'Good quality pasta, cooks well.', '2024-02-16 08:00:00'),
(37, 77, 5, 'High quality rice, cooks perfectly.', '2024-02-17 09:00:00'),
(43, 78, 5, 'Rich and flavorful olive oil.', '2024-02-18 10:00:00'),
(11, 79, 4, 'Good salt, but the packaging could be better.', '2024-02-19 11:00:00'),
(5, 80, 5, 'Fresh and aromatic black pepper.', '2024-02-20 12:00:00'),
(27, 81, 4, 'Tasty cereal, but a bit too sweet.', '2024-02-21 13:00:00'),
(48, 82, 5, 'Creamy unsalted butter, perfect for baking.', '2024-02-22 14:00:00'),
(2, 83, 5, 'Delicious honey with rich flavor.', '2024-02-23 15:00:00'),
(36, 84, 4, 'Good coffee, but a bit too strong for my taste.', '2024-02-24 16:00:00'),
(16, 85, 5, 'Refreshing green tea, very soothing.', '2024-02-25 17:00:00'),
(38, 86, 5, 'Rich and smooth dark chocolate.', '2024-02-26 18:00:00'),
(49, 87, 4, 'Fresh almonds, but some were too hard.', '2024-02-27 19:00:00'),
(21, 88, 5, 'Good quality tuna, very tasty.', '2024-02-28 20:00:00'),
(12, 89, 4, 'Good tomato sauce, but a bit too salty.', '2024-02-29 21:00:00'),
(28, 90, 4, 'Crispy potato chips, great for snacking.', '2024-03-01 22:00:00'),
(41, 1, 5, 'Amazing laptop, super fast!', '2024-05-02 10:00:00'),
(42, 2, 4, 'Great phone but a bit expensive.', '2024-05-03 11:30:00'),
(43, 3, 3, 'Good tablet but battery life could be better.', '2024-05-04 12:45:00'),
(44, 4, 5, 'Best headphones I have ever used.', '2024-05-05 14:00:00'),
(45, 5, 4, 'Nice smartwatch with useful features.', '2024-05-06 15:30:00'),
(46, 6, 5, 'Excellent camera with high resolution.', '2024-05-07 16:45:00'),
(47, 7, 3, 'Decent printer but a bit slow.', '2024-05-08 18:00:00'),
(48, 8, 4, 'Great monitor for the price.', '2024-05-09 19:30:00'),
(49, 9, 5, 'Fantastic mechanical keyboard.', '2024-05-10 20:45:00'),
(50, 10, 4, 'Good mouse, but could be more ergonomic.', '2024-05-11 22:00:00'),
(51, 11, 5, 'Amazing gaming console!', '2024-05-12 23:30:00'),
(52, 12, 4, 'Great earbuds, love the noise cancellation.', '2024-05-13 08:00:00'),
(53, 13, 5, 'Smart thermostat is very convenient.', '2024-05-14 09:30:00'),
(54, 14, 3, 'Fitness tracker is okay, but had issues syncing.', '2024-05-15 10:45:00'),
(55, 15, 5, 'Best electric toothbrush I have ever used.', '2024-05-16 12:00:00'),
(56, 16, 4, 'Powerful hair dryer, works well.', '2024-05-17 13:30:00'),
(57, 17, 5, 'Excellent blender, very powerful.', '2024-05-18 14:45:00'),
(58, 18, 4, 'Good coffee maker, but could be faster.', '2024-05-19 16:00:00'),
(59, 19, 5, 'Fantastic air fryer, makes cooking easy.', '2024-05-20 17:30:00'),
(60, 20, 3, 'Electric kettle works fine but gets hot on the outside.', '2024-05-21 18:45:00'),
(1, 21, 5, 'Vacuum cleaner is very efficient.', '2024-05-22 10:00:00'),
(2, 22, 4, 'Good microwave oven with many features.', '2024-05-23 11:30:00'),
(3, 23, 5, 'Dishwasher is quiet and effective.', '2024-05-24 12:45:00'),
(4, 24, 5, 'Washing machine works perfectly.', '2024-05-25 14:00:00'),
(5, 25, 4, 'Refrigerator is spacious and cools well.', '2024-05-26 15:30:00'),
(6, 26, 3, 'Air conditioner cools well but is noisy.', '2024-05-27 16:45:00'),
(7, 27, 5, 'Heater is perfect for cold nights.', '2024-05-28 18:00:00'),
(8, 28, 4, 'Toaster works fine but is small.', '2024-05-29 19:30:00'),
(9, 29, 5, 'Mixer is great for baking.', '2024-05-30 20:45:00'),
(7, 30, 5, 'Rice cooker is very convenient.', '2024-05-31 22:00:00'),
(7, 31, 5, 'Apple iPhone 13 is fantastic.', '2024-06-01 23:30:00'),
(2, 32, 4, 'Samsung Galaxy S21 is good, but the battery could last longer.', '2024-06-02 08:00:00'),
(3, 33, 5, 'Sony WH-1000XM4 has amazing sound quality.', '2024-06-03 09:30:00'),
(34, 34, 4, 'Dell XPS 13 is a great laptop but a bit pricey.', '2024-06-04 10:45:00'),
(35, 35, 5, 'MacBook Air is the best laptop I have ever used.', '2024-06-05 12:00:00'),
(36, 36, 5, 'Nintendo Switch is very fun to play.', '2024-06-06 13:30:00'),
(37, 37, 4, 'PlayStation 5 is great but hard to find in stock.', '2024-06-07 14:45:00'),
(38, 38, 5, 'Xbox Series X is a powerhouse.', '2024-06-08 16:00:00'),
(39, 39, 5, 'Logitech MX Master 3 is the best mouse I have used.', '2024-06-09 17:30:00'),
(40, 40, 5, 'Apple Watch Series 7 is fantastic.', '2024-06-10 18:45:00'),
(41, 41, 4, 'Fitbit Charge 5 is good but a bit bulky.', '2024-06-11 10:00:00'),
(42, 42, 5, 'Canon EOS R5 is an amazing camera.', '2024-06-12 11:30:00'),
(43, 43, 5, 'Sony Alpha a7 III takes stunning photos.', '2024-06-13 12:45:00'),
(44, 44, 5, 'GoPro HERO9 is perfect for action shots.', '2024-06-14 14:00:00'),
(45, 45, 5, 'Nikon Z6 II is a fantastic camera.', '2024-06-15 15:30:00'),
(46, 46, 4, 'Samsung QLED TV has a great picture but is expensive.', '2024-06-16 16:45:00'),
(47, 47, 5, 'LG OLED TV is the best TV I have ever owned.', '2024-06-17 18:00:00'),
(48, 48, 4, 'Bose SoundLink Revolve has great sound but is pricey.', '2024-06-18 19:30:00'),
(49, 49, 5, 'Sonos One is perfect for my home.', '2024-06-19 20:45:00'),
(50, 50, 5, 'Amazon Echo Dot is very useful.', '2024-06-20 22:00:00'),
(51, 1, 4, 'The laptop is good overall, but the battery life could be better.', '2024-06-21 10:00:00'),
(52, 2, 5, 'I love this phone! It has everything I need.', '2024-06-22 11:30:00'),
(53, 3, 3, 'The tablet is okay, but it could be faster.', '2024-06-23 12:45:00'),
(54, 4, 4, 'The headphones are comfortable and sound great.', '2024-06-24 14:00:00'),
(55, 5, 5, 'The smartwatch works perfectly and looks stylish.', '2024-06-25 15:30:00'),
(56, 6, 4, 'The camera takes good photos but could have more features.', '2024-06-26 16:45:00'),
(57, 7, 5, 'The printer is fast and produces high-quality prints.', '2024-06-27 18:00:00'),
(58, 8, 3, 'The monitor has a nice display but lacks adjustability.', '2024-06-28 19:30:00'),
(59, 9, 5, 'The mechanical keyboard feels great to type on.', '2024-06-29 20:45:00'),
(60, 10, 4, 'The mouse is comfortable to use but could be more responsive.', '2024-06-30 22:00:00');


INSERT INTO Inventory (inventory_id, product_id, product_quantity, latest_update) VALUES
(1, 1, 100, '2024-05-01'),
(2, 2, 150, '2024-05-02'),
(3, 3, 200, '2024-05-03'),
(4, 4, 75, '2024-05-04'),
(5, 5, 120, '2024-05-05'),
(6, 6, 90, '2024-05-06'),
(7, 7, 180, '2024-05-07'),
(8, 8, 220, '2024-05-08'),
(9, 9, 110, '2024-05-09'),
(10, 10, 130, '2024-05-10'),
(11, 11, 90, '2024-05-11'),
(12, 12, 100, '2024-05-12'),
(13, 13, 150, '2024-05-13'),
(14, 14, 80, '2024-05-14'),
(15, 15, 200, '2024-05-15'),
(16, 16, 120, '2024-05-16'),
(17, 17, 160, '2024-05-17'),
(18, 18, 190, '2024-05-18'),
(19, 19, 110, '2024-05-19'),
(20, 20, 140, '2024-05-20'),
(21, 21, 100, '2024-05-21'),
(22, 22, 130, '2024-05-22'),
(23, 23, 170, '2024-05-23'),
(24, 24, 80, '2024-05-24'),
(25, 25, 150, '2024-05-25'),
(26, 26, 120, '2024-05-26'),
(27, 27, 200, '2024-05-27'),
(28, 28, 90, '2024-05-28'),
(29, 29, 110, '2024-05-29'),
(30, 30, 140, '2024-05-30'),
(31, 31, 100, '2024-05-31'),
(32, 32, 130, '2024-06-01'),
(33, 33, 170, '2024-06-02'),
(34, 34, 80, '2024-06-03'),
(35, 35, 150, '2024-06-04'),
(36, 36, 120, '2024-06-05'),
(37, 37, 200, '2024-06-06'),
(38, 38, 90, '2024-06-07'),
(39, 39, 110, '2024-06-08'),
(40, 40, 140, '2024-06-09'),
(41, 41, 100, '2024-06-10'),
(42, 42, 130, '2024-06-11'),
(43, 43, 170, '2024-06-12'),
(44, 44, 80, '2024-06-13'),
(45, 45, 150, '2024-06-14'),
(46, 46, 120, '2024-06-15'),
(47, 47, 200, '2024-06-16'),
(48, 48, 90, '2024-06-17'),
(49, 49, 110, '2024-06-18'),
(50, 50, 140, '2024-06-19'),
(51, 51, 100, '2024-06-20'),
(52, 52, 130, '2024-06-21'),
(53, 53, 170, '2024-06-22'),
(54, 54, 80, '2024-06-23'),
(55, 55, 150, '2024-06-24'),
(56, 56, 120, '2024-06-25'),
(57, 57, 200, '2024-06-26'),
(58, 58, 90, '2024-06-27'),
(59, 59, 110, '2024-06-28'),
(60, 60, 140, '2024-06-29'),
(61, 61, 100, '2024-06-30'),
(62, 62, 130, '2024-07-01'),
(63, 63, 170, '2024-07-02'),
(64, 64, 80, '2024-07-03'),
(65, 65, 150, '2024-07-04'),
(66, 66, 120, '2024-07-05'),
(67, 67, 200, '2024-07-06'),
(68, 68, 90, '2024-07-07'),
(69, 69, 110, '2024-07-08'),
(70, 70, 140, '2024-07-09'),
(71, 71, 100, '2024-07-10'),
(72, 72, 130, '2024-07-11'),
(73, 73, 170, '2024-07-12'),
(74, 74, 80, '2024-07-13'),
(75, 75, 150, '2024-07-14'),
(76, 76, 120, '2024-07-15'),
(77, 77, 200, '2024-07-16'),
(78, 78, 90, '2024-07-17'),
(79, 79, 110, '2024-07-18'),
(80, 80, 140, '2024-07-19'),
(81, 81, 100, '2024-07-20'),
(82, 82, 130, '2024-07-21'),
(83, 83, 170, '2024-07-22'),
(84, 84, 80, '2024-07-23'),
(85, 85, 150, '2024-07-24'),
(86, 86, 120, '2024-07-25'),
(87, 87, 200, '2024-07-26'),
(88, 88, 90, '2024-07-27'),
(89, 89, 110, '2024-07-28'),
(90, 90, 140, '2024-07-29');

-- Tạo index giúp user dễ dàng tìm kiếm sản phẩm theo tên
CREATE INDEX idx_product_name ON product(product_name);
EXPLAIN SELECT * FROM product WHERE product_name = 'PlayStation 5';

-- Tạo index giúp dễ dàng tìm kiếm theo tên khách hàng
CREATE INDEX id_customer_name ON customer(customer_name);
EXPLAIN SELECT * FROM Customer WHERE customer_name = 'Sophia Garcia';

-- Tạo view giúp xem đánh giá của khách hàng trên mỗi sản phẩm
create view product_customer_rating as
	select r.rate_id ,c.customer_name ,p.product_name, r.comment, r.rate_star
    from rating as r
    inner join product as p 
    on r.product_id = p.product_id
    inner join customer as c
    on r.customer_id = c.customer_id;

select * from product_customer_rating order by rate_id asc;

-- view để xem khách hàng nào đã mua những gì 
	create view customer_orderbill as
    select order_id, c.customer_name, p.product_name, o.total_money, o.status_order, o.time_order
    from orderbill as o 
    inner join customer as c 
    on o.customer_id = c.customer_id
    inner join product as p
    on o.product_id = p.product_id    ;
    
select * from customer_orderbill order by order_id asc;

-- Query1: Truy xuất top 10 khách hàng chi nhiều nhất cho cửa hgangf
SELECT c.Customer_Name, SUM(o.Total_money) AS Total_Spending
FROM Customer c
JOIN OrderBill o ON c.Customer_ID = o.Customer_ID
GROUP BY c.Customer_Name
ORDER BY Total_Spending DESC
LIMIT 10;

-- Query2: Top 3 khách hàng trong tháng 4/2024 theo tổng số tiền chi ra
SELECT c.Customer_Name, Sum(o.Total_money) AS Total_Spent, COUNT(o.Order_id) AS Number_Of_Orders
FROM Customer c
JOIN OrderBill o ON c.Customer_ID = o.Customer_ID
WHERE o.Time_Order BETWEEN '2024-04-01' AND '2024-04-30'
GROUP BY c.Customer_Name
ORDER BY Total_Spent DESC
LIMIT 10;

-- Query3: Truy xuất khách hàng đặt hàng nhưng chưa từng đánh giá sản phẩm
SELECT distinct c.Customer_Name
FROM Customer c
JOIN OrderBill o ON c.Customer_ID = o.Customer_ID
LEFT JOIN Rating r ON c.Customer_ID = r.Customer_ID
WHERE r.Customer_ID IS NULL;

-- Query4: Truy xuất 10 khách hàng đánh giá nhiều lần nhất
SELECT c.Customer_Name, COUNT(r.rate_id) AS Total_Ratings
FROM Customer c
JOIN Rating r ON c.Customer_ID = r.Customer_ID
GROUP BY c.Customer_Name
ORDER BY total_ratings DESC
LIMIT 10;

-- Query5: Top 10 khách hàng có nhiều đơn chưa được giao hàng nhiều nhất
SELECT c.Customer_ID, c.Customer_Name, COUNT(o.Order_id) AS Undl_Orders
FROM Customer c
JOIN OrderBill o ON c.Customer_ID = o.Customer_ID
JOIN OrderBill d ON o.order_id = d.order_id
WHERE d.Status_Order != 'Delivered'
GROUP BY c.Customer_Name, c.Customer_ID
ORDER BY Undl_Orders DESC
LIMIT 10;

-- Query6: Truy xuất 8 khách hàng chi nhiều tiền nhất trong 4 tuần qua
SELECT c.Customer_Name, SUM(o.Total_Money) AS Total_Spending
FROM Customer c
JOIN OrderBill o ON c.Customer_ID = o.Customer_ID
WHERE o.Time_Order >= date_sub( NOW() , interval 28 day)
GROUP BY c.Customer_Name
ORDER BY Total_Spending DESC
LIMIT 8;

-- Query7: Truy xuất 10 địa chỉ có nhiều người mua nhất của cửa hàng
SELECT
	SUBSTRING(Address,POSITION(', ' IN Address) + 2) AS City,
    COUNT(*) AS Customer_Count
FROM Customer
GROUP BY City
ORDER BY Customer_Count DESC
LIMIT 10;

-- Query 8: Truy xuất 10 độ tuổi có nhiều người mua nhất cửa hàng
SELECT Age, COUNT(*) AS Total_Customers
FROM Customer
GROUP BY Age
ORDER BY Total_Customers DESC
LIMIT 10;

-- Query 9: Sản phẩm có giá cao nhất từng danh mục
SELECT
	p.TypeProduct,
    Max(p.Price) AS Max_Price,
    (SELECT Product_Name
	FROM Product
    WHERE Product_ID = (SELECT Product_ID
						FROM Product
                        WHERE TypeProduct = p.TypeProduct
                        ORDER BY Price DESC
                        LIMIT 1)) AS Product_Name
FROM Product p 
GROUP BY p.TypeProduct
ORDER BY Max_Price DESC;


-- Query 11: Kiểm tra tất cả sản phẩm trong kho vào một ngày cụ thể
SELECT
	p.Product_Name,
    i.Product_quantity
FROM Inventory i
JOIN Product p ON i.Product_ID = p.Product_ID
WHERE i.latest_update <= '2024-05-11'
ORDER BY p.Product_Name;

-- Query 12: Truy xuất các sản phẩm trong kho con dưới 100 sản phẩm
SELECT i.Inventory_ID, p.Product_Name, i.Product_quantity, i.latest_update
FROM Inventory i
JOIN Product p ON i.Product_ID = p.Product_ID
WHERE i.Product_quantity < 100;

-- Query 13: Tìm số lượng sản phẩm đã được bán cho mỗi sản phhamar
SELECT p.Product_ID, p.Product_Name, SUM(o.Order_quantity) AS Total_sold
FROM Product p
JOIN OrderBill o ON p.Product_ID = o.Product_ID
group by p.Product_ID, p.Product_name
ORDER BY Total_sold DESC;

-- Query 14: Top 5 sản phẩm bán chạy nhất của cửa hàng
SELECT p.Product_Name, SUM(o.Order_quantity) AS Total_sales
FROM Product p
JOIN OrderBill o On p.Product_ID = o.Product_ID
GROUP BY p.Product_Name
ORDER BY Total_Sales DESC
LIMIT 5;

-- Query 15: Sản phẩm bán chạy nhất cho từng danh mục mặt hàng
WITH RankedProducts AS(
	SELECT
		p.TypeProduct,
        p.Product_Name,
        SUM(o.Order_quantity) AS Total_Quantity,
        row_number() OVER (PARTITION BY p.TypeProduct ORDER BY SUM(o.Order_Quantity) DESC) AS Rank1
	FROM Product p
    JOIN OrderBill o ON p.Product_ID = o.Product_ID
    GROUP BY p.TypeProduct, p.Product_Name
)
SELECT TypeProduct, Product_Name, Total_quantity
FROM RankedProducts
WHERE Rank1 = 1;

-- Query 16: Truy vấn tất cả đơn hàng trong 1 tháng
SELECT *
FROM customer_orderbill
WHERE Time_Order between '2024-05-01' AND '2024-05-31';

-- Query 17: Truy xuất các mặt hàng không có đơn hàng nào trong vòng 6 ngày
SELECT Product_Name
FROM Product
WHERE Product_ID NOT IN(
    SELECT DISTINCT Product_ID
    FROM OrderBill
    WHERE Time_Order >= DATE_SUB(NOW(), INTERVAL 6 MONTH)
);

-- Query 18: Truy xuất những đơn hàng chưa được giao hàng chỉ có 1 sẩn phẩm
SELECT p.Product_Name, o.Order_id, o.Order_quantity, o.Time_Order
FROM Product p
JOIN OrderBill o ON p.Product_ID = o.Product_ID
WHERE o.Status_Order IS NULL AND Order_quantity = 1;

-- Query 19: Những đơn hàng đặt từ tháng 1 mà đến giờ chưa được giao
SELECT o.Order_ID, o.Customer_ID, p.Product_Name, o.Order_quantity, o.Total_money, o.Payment_method, o.Time_Order, o.Status_Order
FROM OrderBill o
JOIN Product p ON o.Product_ID = p.Product_ID
WHERE o.Status_Order != 'delivered'
	AND o.Time_Order >= '2024-01-01'
    AND o.Time_Order < '2024-02-01';

-- Query 20: Truy vấn thông tin các đơn hàng trong 1 khoảng thời gian nhất định
SELECT
	c.Customer_Name,
    p.Produc_Name,
    o.Order_quantity,
    o.Total_money,
    r.Rate_star,
    r.Rate_comment,
    r.rate_time
FROM OrderBill o
JOIN Customer c ON o.Customer_ID = c.Customer_ID
JOIN Product p ON o.Product_ID = p.Product_ID
LEFT JOIN Rating r ON o.order_id = r.Customer_ID AND o.Product_ID = r.Product_ID
WHERE o.Time_Order BETWEEN '2024-04-20' AND '2024-05-01'
ORDER BY o.Time_Order DESC;

-- 	Query 21: Xếp hạng các phương thức thanh toán phổ biến nhất
SELECT Payment_method, COUNT(*) AS order_count
FROM OrderBill
GROUP BY Payment_method
ORDER BY Order_count DESC;



-- Khung giờ có nhiều người đặt hàng nhất
select 
	case 
		when extract(hour from Time_Order) between 0 and 4 then '0h-4h'
        when extract(hour from Time_Order) between 4 and 8 then '4h-8h'
        when extract(hour from Time_Order) between 8 and 12 then '8h-12h'
        when extract(hour from Time_Order) between 12 and 16 then '12h-16h'
        when extract(hour from Time_Order) between 16 and 20 then '16h-20h'
        when extract(hour from Time_Order) between 20 and 24 then '20h-24h'
	end as time_period,
    count(*) as order_count
    from OrderBill
    group by time_period
    order by order_count desc;

-- 49) 5 sản phẩm có sao trung bình lớn nhất
select p.product_name , AVG(r.rate_star) as avg_rating
from product p 
inner join rating r on p.product_id = r.product_id
group by p.product_id
order by avg_rating desc
limit 5;

-- 50 Các bình luận về sản phẩm được đánh giá trung bình 3 sao trở lên 
select  r.product_id,r.comment
from rating r
inner join (
	select product_id, count(*) as total_rating, AVG(rate_star) as avg_star
    from rating
    group by product_id
    having avg(rate_star) >= 3
) p on r.product_ID = p.product_ID ;

-- 52 Các sản phẩm trung bình trên 3 sao
select p.product_id , p.product_name, p.star_avg, count(r.rate_id) as total_reviews
from product p
inner join rating r on p.product_id = r.product_id
group by p.product_id, p.product_name, p.star_avg
having p.star_avg > 3 
order by p.star_avg desc;

-- 53 truy xuat tat ca cac rating cua khach hang ten la Angela Merkel
select * 
from rating r
where r.customer_id in 
(select customer_id from customer where customer_name = "Angela Merkel") 
order by rate_time desc;

-- 54 Các đánh giá <=3 sao 
select *
from Rating
where rate_star <= 3
order by rate_time desc;
drop procedure calculate_total_money

-- procedure tính total_money của từng đơn dựa trên product và số lượng
Delimiter $$ 
CREATE procedure insert_bill(in customer_id_para int,product_id_para int, order_quantity_para int, payment_method_para varchar(255), Time_order_para timestamp)   
BEGIN
	declare order_id_para int;
	declare price_product decimal(10,2);
	select order_id into order_id_para
	from orderbill
	order by order_id desc limit 1;

	select price into price_product
    from product
    where product_id = product_id_para;
    
    insert into orderbill(customer_id, product_id,order_quantity, payment_method, Time_order)
    values (customer_id_para, product_id_para, order_quantity_para, payment_method_para, Time_order_para);
	update orderbill
    set total_money = price_product * order_quantity_para
    where order_id = order_id_para + 1;
END;$$
delimiter 
-- test 
call insert_bill(3,1,4,'Cash',Now())

delimiter $$
create procedure update_bill(in order_id_para int, product_id_para int, order_quantity_para int)
begin
	declare price_product decimal(10,2);
    select price into price_product
    from product
    where product_id = product_id_para;
    update orderbill
    set total_money = price_product * order_quantity_para,
    product_id = product_id_para,
    order_quantity = order_quantity_para
    where order_id = order_id_para;
end;$$
delimiter

-- test
call update_bill(151,2,2) 


/*--------------------------------------*/

-- trigger 2 update star avg - insert rating 
Delimiter $$
CREATE trigger tg_update_star_avg_insert 
after insert on rating 
for each row
BEGIN
Declare total_rate decimal(10,2);
Declare total_rate_in_product int;
Declare star_avg_1 numeric(3,1);
	select IFNULL(sum(rate_star), 0) , IFNULL(count(*),0)
    into total_rate, total_rate_in_product
    from rating r
    where r.product_id = new.product_id;
    
	if total_rate_in_product > 0 then
		set star_avg_1 = round(total_rate / total_rate_in_product, 1);
	else set star_avg_1 = 0;
    end if;
update product 
set star_avg = star_avg_1
where product_id = new.product_id;
end; $$
delimiter 

-- trigger 2 update avg_star - delete 
Delimiter $$
CREATE trigger tg_update_star_avg_delete
after delete on rating 
for each row
BEGIN
Declare total_rate decimal(10,2);
Declare total_rate_in_product int;
Declare star_avg_1 numeric(3,1);
	select IFNULL(sum(rate_star), 0) , IFNULL(count(*),0)
    into total_rate, total_rate_in_product
    from rating r
    where r.product_id = old.product_id;
    
	if total_rate_in_product > 0 then
		set star_avg_1 = round(total_rate / total_rate_in_product, 1);
	else set star_avg_1 = 0;
    end if;
update product 
set star_avg = star_avg_1
where product_id = old.product_id;
end; $$
delimiter 

-- test
insert into rating (customer_id, product_id, rate_star) values (20,1,1);
delete from rating where rate_id = 186;
-- cap nhat star avg
update product p
set star_avg = subquery.avg_star
from(
	select r.product_id, round(IFNULL(avg(r.rate_star),0),1) as avg_star
    from rating r
    group by r.product_id
    ) as subquery
where p.product_id = subquery.product_id;
UPDATE Product p
JOIN (
SELECT r.Product_ID, ROUND(COALESCE(AVG(r.Rate_star), 0), 1) AS avg_star
FROM Rating r
GROUP BY r.Product_ID
) subquery ON p.Product_ID = subquery.Product_ID
SET p.star_avg = subquery.avg_star;

-- cap nhat star avg = 0 cho product ko co rating
SET SQL_SAFE_UPDATES = 0;
update product
set star_avg = 0 
where product_id not in(select distinct product_id from rating) ;    


-- Trigger 3 Cập nhật hàng trong kho khi insert đơn hàng
Delimiter $$
CREATE trigger tg_insert_product_quantity
before insert on orderbill
for each row
BEGIN
UPDATE inventory
SET product_quantity = product_quantity - NEW.order_quantity,
latest_update = Now()
WHERE product_id = NEW.product_id;
END; $$
Delimiter 

-- test 
insert into orderbill (order_id,product_id, order_quantity) values (151,1, 4);
-- Trigger 3 Cập nhật hàng tồn trong kho khi update/ delete đơn hàng
Delimiter $$
Create trigger tg_update_product_quantity
Before update ON orderbill
for each row 
BEGIN
if old.product_id = new.product_id then 
UPDATE inventory
SET product_quantity = product_quantity + old.order_quantity - New.order_quantity,
latest_update  = Now()
WHERE product_id = NEW.product_id;
else
begin
update inventory
set product_quantity = product_quantity + old.order_quantity
where product_id = old.product_id;
update inventory
set product_quantity = product_quantity - new.order_quantity,
latest_update  = Now()
where product_id = new.product_id;
end;
end if;
END; $$
Delimiter 

