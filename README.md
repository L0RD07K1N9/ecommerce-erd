# ecommerce-erd
Entity-Relationship Diagram and SQL for an e-commerce platform
# E-commerce ERD Project

This repository contains the Entity-Relationship Diagram (ERD) and SQL schema for an e-commerce platform.

## Contents
- `ecommerce.sql`: SQL script to create the database schema.
- `ecommerce_sample_data.sql`: SQL script that contains data.

## Tables
- `product_image`: Stores product image URLs.
- `color`: Manages color options.
- `product_category`: Classifies products.
- `product`: General product details.
- `product_item`: Purchasable items with variations.
- `brand`: Brand-related data.
- `product_variation`: Links products to variations.
- `size_category`: Groups sizes.
- `size_option`: Specific sizes.
- `product_attribute`: Custom attributes.
- `attribute_category`: Attribute categories.
- `attribute_type`: Attribute types.

## Data Flow
- **Browsing**: `product_category` → `product` → `brand`.
- **Variations**: `product` → `product_item` → `product_variation` → `color`, `size_option`.
- **Images**: `product_item` → `product_image`.
- **Attributes**: `product` → `product_attribute` → `attribute_category`, `attribute_type`.
