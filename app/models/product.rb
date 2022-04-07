class Product < ApplicationRecord
  # This AR object is linked with the products table.

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  # All columns within products table are - product_id, name, description, price, stock_quantity, category_id, created_at, updated_at.
  # This products table contain a column named category_id which represents a reference to category table.
  belongs_to :category
  belongs_to :user, optional: true

  mount_uploader :image, ProductImageUploader
  serialize :image, JSON

  # Ensure that the product always includes a title, price and stock_quantity
  validates :name, :price, :colour, :size, :details, :code, :sizeandfit, :lookafterme, :brand, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { only_integer: true }, length: { maximum: 7 }

  COLOUR = %w{ Black White Navy Blue Red Clear Satin Yellow Seafoam }
end
