require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test 'test event' do
    user1 = User.create(login: 'login1', password: '12345', email: 'asd@example.com',
                        phone_number: '1234456', name: 'kot')
    location1 = Location.create(city: 'city', district: 'district',
                                street: 'street', house: '38', flat: '12')
    assert_equal Event.create(title: 'title', event_date: '21.12.2019. 13:00:00',
                              user: user1 ,location: location1,
                              event_description: 'description').valid?, true
  end

  test 'test event empty title' do
    user1 = User.create(login: 'login1', password: '12345', email: 'asd@example.com',
                        phone_number: '1234456', name: 'kot')
    location1 = Location.create(city: 'city', district: 'district',
                                street: 'street', house: '38', flat: '12')
    assert_equal Event.create(title: nil, event_date: '21.12.2019. 13:00:00',
                              user: user1 ,location: location1,
                              event_description: 'description').valid?, false
  end

  test 'test event empty event_date' do
    user1 = User.create(login: 'login1', password: '12345', email: 'asd@example.com',
                        phone_number: '1234456', name: 'kot')
    location1 = Location.create(city: 'city', district: 'district',
                                street: 'street', house: '38', flat: '12')
    assert_equal Event.create(title: 'title', event_date: nil,
                              user: user1 ,location: location1,
                              event_description: 'description').valid?, false
  end

  test 'test event empty user' do
    user1 = User.create(login: 'login1', password: '12345', email: 'asd@example.com',
                        phone_number: '1234456', name: 'kot')
    location1 = Location.create(city: 'city', district: 'district',
                                street: 'street', house: '38', flat: '12')
    assert_equal Event.create(title: 'title', event_date: '21.12.2019. 13:00:00',
                              user: nil, location: location1,
                              event_description: 'description').valid?, false
  end

  test 'test event empty location' do
    user1 = User.create(login: 'login1', password: '12345', email: 'asd@example.com',
                        phone_number: '1234456', name: 'kot')
    location1 = Location.create(city: 'city', district: 'district',
                                street: 'street', house: '38', flat: '12')
    assert_equal Event.create(title: 'title', event_date: '21.12.2019. 13:00:00',
                              user: user1 ,location: nil,
                              event_description: 'description').valid?, false
  end

  test 'test event empty description' do
    user1 = User.create(login: 'login1', password: '12345', email: 'asd@example.com',
                        phone_number: '1234456', name: 'kot')
    location1 = Location.create(city: 'city', district: 'district',
                                street: 'street', house: '38', flat: '12')
    assert_equal Event.create(title: 'title', event_date: '21.12.2019. 13:00:00',
                              user: user1 ,location: location1,
                              event_description: nil).valid?, false
  end
end
