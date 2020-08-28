require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test '`full_name` returns the user full name' do
    user = User.new(first_name: 'richard', last_name: 'jarram')
    assert_equal user.full_name, 'richard jarram'
  end
end
