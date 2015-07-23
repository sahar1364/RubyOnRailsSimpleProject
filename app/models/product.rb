class Product < ActiveRecord::Base
  belongs_to :category
  searchable do
	text :Name
	integer :category_id
  end
end
