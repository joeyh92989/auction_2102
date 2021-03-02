require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/auction'
require './lib/item'
require './lib/attendee'

class AttendeeTest < MiniTest::Test


  def test_it_exists
    attendee = Attendee.new(name: 'Megan', budget: '$50')
    assert_instance_of Attendee, attendee
    assert_equal 'Megan', attendee.name
    assert_equal '$50', attendee.budget
  end
end