class CreateSpaces < ActiveRecord::Migration[6.0]
  def change
    create_table :spaces do |t|
      t.string :location
      t.float :volume
      t.string :condition
      t.text :access
      t.float :price_per_month
      t.references :user, null: false, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
