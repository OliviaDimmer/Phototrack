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
end
