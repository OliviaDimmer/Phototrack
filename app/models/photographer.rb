class Photographer < ApplicationRecord
  validates :name, :email, :phone_number, presence: true
  validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "XXX-XXX-XXXX" }
  has_and_belongs_to_many :shoot
end
