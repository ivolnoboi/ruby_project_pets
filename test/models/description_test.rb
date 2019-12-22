require 'test_helper'

class DescriptionTest < ActiveSupport::TestCase
test 'test description' do
    breed1 = Breed.create(name: 'хаски')
    assert_equal Description.create(breed: breed1, sex: 'male', color: 'grey',
                                    special_signs: 'something', age: 5, content: 'something 2.0').valid?, true
  end

test 'test description empty breed_id' do
  breed1 = Breed.create(name: 'хаски')
  assert_equal Description.create(breed: nil, sex: 'male', color: 'grey',
                                  special_signs: 'something', age: 5, content: 'something 2.0').valid?, false
end

test 'test description empty sex' do
  breed1 = Breed.create(name: 'хаски')
  assert_equal Description.create(breed: breed1, sex: nil, color: 'grey',
                                  special_signs: 'something', age: 5, content: 'something 2.0').valid?, false
end

test 'test description empty color' do
  breed1 = Breed.create(name: 'хаски')
  assert_equal Description.create(breed: breed1, sex: 'male', color: nil,
                                  special_signs: 'something', age: 5, content: 'something 2.0').valid?, false
end

test 'test description empty special_signs' do
  breed1 = Breed.create(name: 'хаски')
  assert_equal Description.create(breed: breed1, sex: 'male', color: 'grey',
                                  special_signs: nil, age: 5, content: 'something 2.0').valid?, true
end

test 'test description empty content' do
  breed1 = Breed.create(name: 'хаски')
  assert_equal Description.create(breed: breed1, sex: 'male', color: 'grey',
                                  special_signs: 'something', age: 5, content: nil).valid?, true
end
end
