/*Sample Data for E-commerce Platform*/
/*Database: ecommerce*/

USE `ecommerce`;

/*Insert into attribute_type*/

INSERT INTO `attribute_type` (`type_name`) VALUES
('Text'),
('Number'),
('Boolean');

/*Insert into attribute_category*/

INSERT INTO `attribute_category` (`category_name`) VALUES
('Physical'),
('Technical');

/*Insert into size_category*/

INSERT INTO `size_category` (`category_name`) VALUES
('Clothing Sizes'),
('Shoe Sizes');

/*Insert into size_option*/

INSERT INTO `size_option` (`size_category_id`, `size_name`) VALUES
(1, 'S'),
(1, 'M'),
(1, 'L'),
(2, '8'),
(2, '9');

/*Insert into color*/

INSERT INTO `color` (`color_name`, `hex_code`) VALUES
('Red', '#FF0000'),
('Blue', '#0000FF'),
('Black', '#000000');

/*Insert into product_category*/

INSERT INTO `product_category` (`category_name`, `parent_category_id`) VALUES
('Clothing', NULL),
('Men''s Clothing', 1),
('Electronics', NULL),
('Smartphones', 3);

/*Insert into brand*/

INSERT INTO `brand` (`brand_name`, `description`) VALUES
('Nike', 'Leading sportswear brand'),
('Apple', 'Innovative technology company'),
('Adidas', 'Global athletic apparel brand');

/*Insert into product*/

INSERT INTO `product` (`category_id`, `brand_id`, `product_name`, `base_price`, `description`) VALUES
(2, 1, 'Air Max T-Shirt', 29.99, 'Comfortable cotton t-shirt for casual wear'),
(2, 3, 'Essentials Hoodie', 49.99, 'Warm hoodie with logo embroidery'),
(4, 2, 'iPhone 14', 799.99, 'Latest smartphone with A15 Bionic chip');

/*Insert into product_item*/

INSERT INTO `product_item` (`product_id`, `sku`, `price`, `stock_quantity`) VALUES
(1, 'NIKE-TSHIRT-S-RED', 29.99, 100),
(1, 'NIKE-TSHIRT-M-BLUE', 29.99, 80),
(2, 'ADIDAS-HOODIE-L-BLACK', 49.99, 50),
(3, 'APPLE-IPHONE14-BLACK', 799.99, 20);

/*Insert into product_image*/

INSERT INTO `product_image` (`product_item_id`, `image_url`, `is_primary`) VALUES
(1, 'https://picsum.photos/seed/nike-tshirt-red-front/600/400', 1),
(1, 'https://picsum.photos/seed/nike-tshirt-red-back/600/400', 0),
(2, 'https://picsum.photos/seed/nike-tshirt-blue-front/600/400', 1),
(3, 'https://picsum.photos/seed/adidas-hoodie-black-front/600/400', 1),
(4, 'https://picsum.photos/seed/iphone14-black-front/600/400', 1);

/*Insert into product_variation*/

INSERT INTO `product_variation` (`product_item_id`, `color_id`, `size_option_id`) VALUES
(1, 1, 1), -- Red, S
(2, 2, 2), -- Blue, M
(3, 3, 3), -- Black, L
(4, 3, NULL); -- Black, No size (for iPhone)

/*Insert into product_attribute*/

INSERT INTO `product_attribute` (`product_id`, `attribute_type_id`, `attribute_category_id`, `attribute_value`) VALUES
(1, 1, 1, 'Cotton'), -- T-Shirt Material
(1, 2, 1, '0.3'), -- T-Shirt Weight (kg)
(2, 1, 1, 'Polyester Blend'), -- Hoodie Material
(3, 2, 2, '128'), -- iPhone Storage (GB)
(3, 1, 2, 'A15 Bionic'); -- iPhone Chip