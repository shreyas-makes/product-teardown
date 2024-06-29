class CreateTeardowns < ActiveRecord::Migration[7.2]
  def change
    create_table :teardowns do |t|
      t.references :product, null: false, foreign_key: true
      t.text :strategy
      t.text :playstore
      t.text :positioning
      t.text :onboarding
      t.text :ftue
      t.text :jtbd
      t.text :defensibility
      t.text :trust_reliability
      t.text :product_design

      t.timestamps
    end
  end
end
