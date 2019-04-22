class Reporter < ApplicationRecord
  validates :name, presence: true
  validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "XXX-XXX-XXXX" }
  has_and_belongs_to_many :shoots
  validates :uid, uniqueness: true
end
