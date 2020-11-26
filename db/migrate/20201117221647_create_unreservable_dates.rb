class CreateUnreservableDates < ActiveRecord::Migration[6.0]
  def change
    create_table :unreservable_dates do |t|
      t.references :space, null: false, foreign_key: true
      t.date :unreservable_from
      t.date :unreservable_to

      t.timestamps
    end
  end
end
