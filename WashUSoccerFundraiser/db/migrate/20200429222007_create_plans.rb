class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.string :description
      t.integer :price_cents

      t.timestamps
    end
  end
end
