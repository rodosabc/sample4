class CreateHolidays < ActiveRecord::Migration
  def change
    create_table :holidays do |t|
      t.text :text
      t.datetime :date

      t.timestamps null: false
    end
  end
end
