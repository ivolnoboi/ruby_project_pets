require 'test_helper'

class TypePetTest < ActiveSupport::TestCase
  test 'type_pet empty pet_type' do
    assert_equal TypePet.create(pet_type: nil).valid?, false
  end

  test 'type_pet not empty pet_type' do
    assert_equal TypePet.create(pet_type: 'cat').valid?, true
  end

  test 'type_pet unique pet_type' do
    assert_equal TypePet.create(pet_type: 'cat').valid?, true
    assert_equal TypePet.create(pet_type: 'cat').valid?, false
  end
end
