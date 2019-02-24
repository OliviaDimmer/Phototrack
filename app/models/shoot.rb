class Shoot < ApplicationRecord
  validates :slug, :assignment_description, :start, :end, :location, :contact_name, :contact_phone_number, :deadline, presence: true
  validates :slug, uniqueness: true
  has_and_belongs_to_many :reporter, :photographer
end
