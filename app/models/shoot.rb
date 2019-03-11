class Shoot < ApplicationRecord
  validates :slug, :assignment_description, :start, :end, :location, :contact_name, :contact_phone_number, :deadline, presence: true
  validates :slug, uniqueness: true
  has_and_belongs_to_many :reporters
  has_and_belongs_to_many :photographers

  # def reporter_name=(name)
  #   self.reporter = Reporter.find_or_create_by(name: name)
  # end
  #
  # def reporter_name
  #   self.reporter ? self.reporter.name : nil
  # end

end
