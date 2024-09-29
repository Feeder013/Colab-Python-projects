
DROP DATABASE IF EXISTS `dakery`;
CREATE DATABASE `dakery`;
USE `dakery`;

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `units_in_stock` int(11) NOT NULL,
  `sale_price` decimal(4,2) NOT NULL,
  PRIMARY KEY (`product_id`)
  ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  INSERT INTO `products` VALUES (1001,'Chocolate Chip Cookie',200,1.50);
  INSERT INTO `products` VALUES (1002, `Banana Nut Muffin`, 180, 2.50);
  INSERT INTO `products` VALUES (1003, `Croissant`, 70,1.75);
  INSERT INTO `products` VALUES (1004, `Cheese Danish`, 55, 1.85);
  INSERT INTO `products` VALUES (1005, `Cannoli`, 112, 2.25);
  INSERT INTO `products` VALUES (1006, `Sweet Bread Loaf`, 32, 15.50);
  INSERT INTO `products` VALUES (1007, `Strawberry Macaroni`, 98, 2.00);
  INSERT INTO `products` VALUES (1008, `Coffee Cake`, 25, 13.00);
  INSERT INTO `products` VALUES (1009, `Carrot Cake`, 15, 14.50);
  INSERT INTO `products` VALUES (1010, `Chocolate Covered Doughnut`, 80, 1.00);
  
  
  CREATE TABLE `suppliers` ( 
  `supplier_id` smallint(6)  NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`supplier_id`)
  
  ) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  INSERT INTO `suppliers` VALUES (1, `Bakery LLC`);
  INSERT INTO `suppliers` VALUES (2, `Goods 4 U`);
  INSERT INTO `suppliers` VALUES (3, `Savory Loaf Delivery Co.`);
  INSERT INTO `suppliers` VALUES (4, `Mrs. Yums`);
  INSERT INTO `suppliers` VALUES (5, `Grain to TABLE LLC`);
  
  CREATE TABLE `supplier_delivery_status` (
  `order_status_id` tinyint(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`order_status_id`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
  INSERT INTO  `supplier_delivery_status` VALUES (1, `Processed`);
  INSERT INTO  `supplier_delivery_status` VALUES (2, `Shipped`);
  INSERT INTO `supplier_delivery_status` VALUES (3, `Delivered`);
  
  
  
  
  
  


