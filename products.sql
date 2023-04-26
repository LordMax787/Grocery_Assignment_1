CREATE DATABASE Grocery_assignment_1;
use Grocery_assignment_1;

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `product_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `unit_price` float(8,2) DEFAULT NULL,
  `unit_quantity` varchar(20) DEFAULT NULL,
  `in_stock` int(10) unsigned DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO products VALUES (1000, 'Apples', 2.20, 'per kilogram', 500, 'fruit & veg');
INSERT INTO products VALUES (1001, 'Bananas', 0.90, 'per kilogram', 800, 'fruit & veg');
INSERT INTO products VALUES (1002, 'Carrots', 1.95, 'per kilogram', 1000, 'fruit & veg');
INSERT INTO products VALUES (1003, 'Broccoli', 2.80, 'per kilogram', 600, 'fruit & veg');
INSERT INTO products VALUES (1004, 'Tomatoes', 3.30, 'per kilogram', 400, 'fruit & veg');
INSERT INTO products VALUES (1005, 'Lettuce', 1.50, 'per head', 0, 'fruit & veg');

INSERT INTO products VALUES (1006, 'Chicken Breasts', 9.99, 'per kilogram', 500, 'meat & seafood');
INSERT INTO products VALUES (1007, 'Ground Beef', 8.99, 'per kilogram', 800, 'meat & seafood');
INSERT INTO products VALUES (1008, 'Salmon Fillets', 22.99, 'per kilogram', 400, 'meat & seafood');
INSERT INTO products VALUES (1009, 'Pork Chops', 14.99, 'per kilogram', 300, 'meat & seafood');
INSERT INTO products VALUES (1010, 'Shrimp', 25.99, 'per kilogram', 200, 'meat & seafood');
INSERT INTO products VALUES (1011, 'Tilapia', 16.99, 'per kilogram', 600, 'meat & seafood');

INSERT INTO products VALUES (1012, 'Bread Loaves', 1.99, 'per loaf', 1200, 'bakery');
INSERT INTO products VALUES (1013, 'Bagels', 0.50, 'per piece', 800, 'bakery');
INSERT INTO products VALUES (1014, 'Croissants', 1.20, 'per piece', 600, 'bakery');
INSERT INTO products VALUES (1015, 'Muffins', 1.50, 'per piece', 400, 'bakery');
INSERT INTO products VALUES (1016, 'Donuts', 0.80, 'per piece', 500, 'bakery');
INSERT INTO products VALUES (1017, 'Cookies', 4.99, 'per 200g pack', 0, 'bakery');

INSERT INTO products VALUES (1018, 'Milk', 1.25, 'per liter', 1000, 'dairy & eggs');
INSERT INTO products VALUES (1019, 'Cheese', 11.99, 'per kilogram', 500, 'dairy & eggs');
INSERT INTO products VALUES (1020, 'Yogurt', 0.99, 'per 500g container', 800, 'dairy & eggs');
INSERT INTO products VALUES (1021, 'Butter', 2.99, 'per 250g block', 600, 'dairy & eggs');
INSERT INTO products VALUES (1022, 'Eggs', 1.99, 'per dozen', 400, 'dairy & eggs');
INSERT INTO products VALUES (1023, 'Sour Cream', 1.79, 'per 500g container', 500, 'dairy & eggs');

INSERT INTO products VALUES (1024, 'Pasta', 1.49, 'per 500g pack', 1000, 'pantry');
INSERT INTO products VALUES (1025, 'Rice', 1.99, 'per 1kg bag', 800, 'pantry');
INSERT INTO products VALUES (1026, 'Canned Tomatoes', 1.29, 'per 400g can', 600, 'pantry');
INSERT INTO products VALUES (1027, 'Canned Beans', 0.99, 'per 400g can', 0, 'pantry');
INSERT INTO products VALUES (1028, 'Peanut Butter', 2.50, 'per 500g jar', 400, 'pantry');
INSERT INTO products VALUES (1029, 'Flour', 1.69, 'per 1kg bag', 500, 'pantry');

INSERT INTO products VALUES (1030, 'Chips', 1.99, 'per 200g bag', 1000, 'snacks & confectionary');
INSERT INTO products VALUES (1031, 'Chocolate Bars', 1.49, 'per 100g bar', 800, 'snacks & confectionary');
INSERT INTO products VALUES (1032, 'Candy', 0.99, 'per 100g bag', 1200, 'snacks & confectionary');
INSERT INTO products VALUES (1033, 'Trail Mix', 3.49, 'per 250g pack', 400, 'snacks & confectionary');
INSERT INTO products VALUES (1034, 'Popcorn', 1.29, 'per 100g bag', 600, 'snacks & confectionary');
INSERT INTO products VALUES (1035, 'Granola Bars', 2.99, 'per 6-pack', 500, 'snacks & confectionary');

INSERT INTO products VALUES (1036, 'Water Bottles', 0.99, 'per 500ml bottle', 1500, 'drinks');
INSERT INTO products VALUES (1037, 'Soda Cans', 0.79, 'per 330ml can', 1200, 'drinks');
INSERT INTO products VALUES (1038, 'Orange Juice', 1.49, 'per 1 liter carton', 800, 'drinks');
INSERT INTO products VALUES (1039, 'Milkshakes', 2.99, 'per 500ml bottle', 400, 'drinks');
INSERT INTO products VALUES (1040, 'Energy Drinks', 1.99, 'per 250ml can', 600, 'drinks');
INSERT INTO products VALUES (1041, 'Iced Tea', 1.29, 'per 1 liter bottle', 700, 'drinks');
L
INSERT INTO products VALUES (1042, 'Frozen Vegetables', 2.99, 'per 1kg bag', 800, 'freezer');
INSERT INTO products VALUES (1043, 'Frozen Pizzas', 4.99, 'per 400g pizza', 600, 'freezer');
INSERT INTO products VALUES (1044, 'Ice Cream', 3.99, 'per 1 liter tub', 400, 'freezer');
INSERT INTO products VALUES (1045, 'Frozen Chicken', 5.49, 'per 500g bag', 500, 'freezer');
INSERT INTO products VALUES (1046, 'Frozen Berries', 4.49, 'per 500g bag', 400, 'freezer');
INSERT INTO products VALUES (1047, 'Frozen Fish Fillets', 8.99, 'per 500g pack', 300, 'freezer');

INSERT INTO products VALUES (1048, 'Diapers', 20.99, 'per pack of 50', 200, 'baby');
INSERT INTO products VALUES (1049, 'Baby Formula', 25.99, 'per 1kg container', 150, 'baby');
INSERT INTO products VALUES (1050, 'Baby Food Jars', 0.99, 'per 125g jar', 500, 'baby');
INSERT INTO products VALUES (1051, 'Baby Wipes', 1.99, 'per 80 wipes pack', 800, 'baby');
INSERT INTO products VALUES (1052, 'Infant Medicine', 7.99, 'per 30ml bottle', 400, 'baby');
INSERT INTO products VALUES (1053, 'Teething Toys', 4.99, 'per toy', 300, 'baby');
COMMIT;


