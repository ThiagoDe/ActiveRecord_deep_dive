class Product < ApplicationRecord

  default_scope { order("name ASC") }

  scope :recent, lambda { where(["created_at >= ?", 1.year.ago])}

end
