class AddPrefixToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :prefix, :string
  end
end
