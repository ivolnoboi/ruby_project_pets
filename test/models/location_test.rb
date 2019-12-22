require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  test 'test location' do
    assert_equal Location.create(city: 'city', district: 'district',
                                 street: 'street', house: '38', flat: '12').valid?, true
  end

  test 'test location empty city' do
    assert_equal Location.create(city: nil, district: 'district',
                                 street: 'street', house: '38', flat: '12').valid?, false
  end

  test 'test location empty district' do
    assert_equal Location.create(city: 'city', district: nil,
                                 street: 'street', house: '38', flat: '12').valid?, true
  end

  test 'test location empty street' do
    assert_equal Location.create(city: 'city', district: 'district',
                                 street: nil, house: '38', flat: '12').valid?, false
  end

  test 'test location empty house' do
    assert_equal Location.create(city: 'city', district: 'district',
                                 street: 'street', house: nil, flat: '12').valid?, false
  end

  test 'test location empty flat' do
    assert_equal Location.create(city: 'city', district: 'district',
                                 street: 'street', house: '38', flat: nil).valid?, true
  end
end
