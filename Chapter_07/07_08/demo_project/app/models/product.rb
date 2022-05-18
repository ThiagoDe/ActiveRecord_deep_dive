class Product < ApplicationRecord

  belongs_to :category, :touch => true, :counter_cache => true

  default_scope { order("name ASC") }

  scope :recent, lambda { where(["created_at >= ?", 1.year.ago])}

  after_save :announce_save

  delegate :prefix, :to => :category, :allow_nil => true

  def full_ref_num
    "#{prefix}-#{ref_num}"
  end

  private

    def announce_save
      puts "*** Saved! ***"
    end

end
