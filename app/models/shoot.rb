class Shoot < ApplicationRecord
  validates :slug, :assignment_description, :start, :end, :location, :contact_name, :contact_phone_number, :deadline, presence: true
  validates :slug, uniqueness: true
  has_and_belongs_to_many :reporters
  has_and_belongs_to_many :photographers

  # def reporter_names=(names)
  #     # reset self tags to an empty set; build all on each create/update
  #     self.reporter_name = []
  #     # split the tag names at commas into an array
  #     names.split(',').each do |name|
  #       # strip any trailing or leading whitespace on each tag
  #       reporter_name = Reporter_name.find_or_create_by(name: name.strip)
  #       # append each newly found or created tag to self
  #       self.reporter_name << reporter_name
  #     end
  #   end
  #
  #   def reporter_names
  #     if self.reporter_name.any?
  #       # use Array#map to build a collection of just the tag name values
  #       tags = self.reporter_name.map{|x| x.name }
  #       # join the array and return a comma-space-separated string
  #       reporter_name.join(', ')
  #     else
  #       # return a nil value if there are no tags
  #       reporter_name = nil
  #     end
  #   end

end
