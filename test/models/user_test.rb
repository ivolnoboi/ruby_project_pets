require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # t.string :login, null: false, unique: true
  # t.string :password, null: false
  # t.string :email, null: false, unique: true
  # t.string :phone_number
  # t.string :name, null: false

  test 'user empty login' do
    assert_equal User.create(login: nil, password: '12345', email: 'asd@example.com', 
                             phone_number: '1234456', name: 'kot').valid?, false
  end

  test 'user empty password' do
    assert_equal User.create(login: 'login1', password: nil, email: 'asd2@example.com',
                             phone_number: '1234456', name: 'kot').valid?, false
  end

  test 'user empty email' do
    assert_equal User.create(login: 'login2', password: '12345', email: nil,
                             phone_number: '1234456', name: 'kot').valid?, false
  end

  test 'user empty phone_number' do
    assert_equal User.create(login: 'login3', password: '12345', email: 'asd3@example.com',
                             phone_number: nil, name: 'kot').valid?, true
  end

  test 'user empty name' do
  assert_equal User.create(login: 'login4', password: '12345', email: 'asd4@example.com',
                           phone_number: '1234456', name: nil).valid?, false
  end

end
