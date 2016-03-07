class Holiday < ActiveRecord::Base
  validates :text, presence: true
  validates :date, presence: true
  has_many :poems, dependent: :destroy
end