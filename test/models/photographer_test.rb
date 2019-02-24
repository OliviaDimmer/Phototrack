require 'test_helper'

class PhotographerTest < ActiveSupport::TestCase
  test "photographer fields must not be empty" do
    Photographer = Photographer.new
    assert Photographer.invalid?
    assert Photographer.errors[:name].any?
    assert Photographer.errors[:email].any?
    assert Photographer.errors[:phone_number].any?
 end
end
