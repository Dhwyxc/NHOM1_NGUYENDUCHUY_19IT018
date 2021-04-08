class Product < ApplicationRecord
  belongs_to :publisher
  belongs_to :category
  belongs_to :provider
end
