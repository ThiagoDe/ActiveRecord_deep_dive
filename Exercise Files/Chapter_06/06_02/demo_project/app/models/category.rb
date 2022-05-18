class Category < ApplicationRecord

  has_many :products

  validates :name, :presence => true
  validates :prefix, :presence => true

  before_validation :add_default_prefix

  private

    def add_default_prefix
      if prefix.blank?
        puts "*** Adding default prefix"
        self.prefix = 'GEN'
      end
    end

end
