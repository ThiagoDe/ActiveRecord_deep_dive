class Product < ApplicationRecord

  belongs_to :category

  default_scope { order("name ASC") }

  scope :recent, lambda { where(["created_at >= ?", 1.year.ago])}

  delegate :prefix, :to => :category

  def full_ref_num
    "#{prefix}-#{ref_num}"
  end

end
