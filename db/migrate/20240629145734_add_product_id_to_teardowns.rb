class AddProductIdToTeardowns < ActiveRecord::Migration[7.2]
  def change
    unless column_exists?(:teardowns, :product_id)
      add_column :teardowns, :product_id, :integer
      add_index :teardowns, :product_id, unique: true
    end
  end
end
