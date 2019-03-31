require 'test_helper'

class ShootTest < ActiveSupport::TestCase
   test "shoot fields must not be empty" do
     Shoot = Shoot.new
     assert Shoot.invalid?
     assert Shoot.errors[:slug].any?
     assert Shoot.errors[:assignment_description].any?
     assert Shoot.errors[:start].any?
     assert Shoot.errors[:end].any?
     assert Shoot.errors[:location].any?
     assert Shoot.errors[:contact_name].any?
     assert Shoot.errors[:contact_phone_number].any?
     assert Shoot.errors[:deadline].any?
  end

# test "post responds to reporter_name getter" do
#   @shoot = shoots(:good_shoot)
#   assert_equal @shoot.reporter.name, shoots(:good_shoot).author.name
# end
#
# test "post responds to reporter_name setter" do
#   @shoot = shoots(:good_shoot)
#   @shoot.reporter_name = reporters(:Carl_Bernstein)name
#   @shoot.save
#   assert_equal @shoot.reporter.name, shoots(:good_shoot).author.name
# end

end
