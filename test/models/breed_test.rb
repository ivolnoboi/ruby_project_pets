require 'test_helper'

class BreedTest < ActiveSupport::TestCase
  test 'breed empty pet_type' do
    assert_equal Breed.create(name: nil).valid?, false
  end

  test 'breed not empty pet_type' do
    assert_equal Breed.create(name: 'хаски').valid?, true
  end

  test 'breed unique pet_type' do
    assert_equal Breed.create(name: 'хаски').valid?, true
    assert_equal Breed.create(name: 'хаски').valid?, false
  end
end
