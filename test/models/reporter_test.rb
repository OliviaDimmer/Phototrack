require 'test_helper'

class ReporterTest < ActiveSupport::TestCase
  test "reporter fields must not be empty" do
    reporter = Reporter.new
    reporter.save
    assert reporter.invalid?
    assert reporter.errors[:name].any?
    assert reporter.errors[:email].any?
    assert reporter.errors[:phone_number].any?
 end
end
