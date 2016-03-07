class Poem < ActiveRecord::Base
  validates :text, presence: true
  belongs_to :holiday, foreign_key: :holiday_id
end