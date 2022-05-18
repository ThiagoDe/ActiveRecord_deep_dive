class AddProductsCountToCategories < ActiveRecord::Migration[5.0]

  def change
    add_column :categories, :products_count, :integer, :default => 0

    reversible do |dir|
      dir.up do
        Category.all.each do |category|
          count = category.products.size
          # must use update attribute b/c it is marked read-only
          category.update_attribute(:products_count, count)
        end
      end
    end

  end

end
