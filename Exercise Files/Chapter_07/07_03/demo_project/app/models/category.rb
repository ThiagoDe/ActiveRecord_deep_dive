class Category < ApplicationRecord

  has_many :products, lambda { where("inventory > 0") }

  validates :name, :presence => true
  validates :prefix, :presence => true

  before_validation :add_default_prefix,
    :if => Proc.new {|category| category.prefix.blank? }

  # around_save :benchmark

  private

    def add_default_prefix
      puts "*** Adding default prefix"
      self.prefix = 'GEN'
    end

end
