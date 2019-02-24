require 'test_helper'

class ReporterTest < ActiveSupport::TestCase
  test "reporter fields must not be empty" do
    Reporter = Reporter.new
    assert Reporter.invalid?
    assert Reporter.errors[:name].any?
    assert Reporter.errors[:email].any?
    assert Reporter.errors[:phone_number].any?
 end
end
