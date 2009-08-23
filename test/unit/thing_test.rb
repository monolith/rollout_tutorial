require 'test_helper'

class ThingTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Thing.new.valid?
  end
end
