class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.text :text

      t.timestamps null: false
    end
  end
end
