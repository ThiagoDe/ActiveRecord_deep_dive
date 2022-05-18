class AddStyleToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :style
  end
end
