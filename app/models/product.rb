class Product < ApplicationRecord
  belongs_to :sub_subcategory
  belongs_to :subcategory
end
