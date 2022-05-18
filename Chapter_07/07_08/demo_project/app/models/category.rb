class Category < ApplicationRecord

  has_many :products, lambda { where("inventory > 0") },
    :dependent => :destroy

  belongs_to :parent, :class_name => 'Category', :optional => true
  has_many :subcategories, :class_name => 'Category',
    :foreign_key => 'parent_id'

  validates :name, :presence => true
  validates :prefix, :presence => true

  before_validation :add_default_prefix,
    :if => Proc.new {|category| category.prefix.blank? }

  # around_save :benchmark

  scope :roots, lambda { where(:parent_id => nil) }

  private

    def add_default_prefix
      puts "*** Adding default prefix"
      self.prefix = 'GEN'
    end

end
