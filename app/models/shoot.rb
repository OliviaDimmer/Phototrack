class Shoot < ApplicationRecord
  validates :slug, :assignment_description, :start, :end, :location, :contact_name, :contact_phone_number, :deadline, presence: true
  validates :slug, uniqueness: true
end
end
