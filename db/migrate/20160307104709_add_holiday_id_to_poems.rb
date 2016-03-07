class AddHolidayIdToPoems < ActiveRecord::Migration
  def change
    add_foreign_key :poems, :holidays
  end
end
