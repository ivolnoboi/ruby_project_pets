require 'test_helper'

class PetTest < ActiveSupport::TestCase
  test 'test pet' do
    tp = TypePet.create(pet_type: 'cat')
    br = Breed.create(name: 'хаски')
    d = Description.create(breed: br, sex: 'male', color: 'grey',
                           special_signs: 'something', age: 5, content: 'something 2.0')
    l = Location.create(city: 'city', district: 'district', street: 'street', house: '38', flat: '12')
    u = User.create(login: 'login1', password: '12345', email: 'asd@example.com',
                    phone_number: '1234456', name: 'kot')
    assert_equal Pet.create(name: 'na', type_pet: tp, description: d, location: l, user: u).valid?, true
  end

  test 'test pet empty name' do
    tp = TypePet.create(pet_type: 'cat')
    br = Breed.create(name: 'хаски')
    d = Description.create(breed: br, sex: 'male', color: 'grey',
                           special_signs: 'something', age: 5, content: 'something 2.0')
    l = Location.create(city: 'city', district: 'district', street: 'street', house: '38', flat: '12')
    u = User.create(login: 'login1', password: '12345', email: 'asd@example.com',
                    phone_number: '1234456', name: 'kot')
    assert_equal Pet.create(name: nil, type_pet: tp, description: d, location: l, user: u).valid?, false
  end

  test 'test pet empty type_pet' do
    br = Breed.create(name: 'хаски')
    d = Description.create(breed: br, sex: 'male', color: 'grey',
                           special_signs: 'something', age: 5, content: 'something 2.0')
    l = Location.create(city: 'city', district: 'district', street: 'street', house: '38', flat: '12')
    u = User.create(login: 'login1', password: '12345', email: 'asd@example.com',
                    phone_number: '1234456', name: 'kot')
    assert_equal Pet.create(name: 'na', type_pet: nil, description: d, location: l, user: u).valid?, false
  end

  test 'test pet empty description' do
    tp = TypePet.create(pet_type: 'cat')
    l = Location.create(city: 'city', district: 'district', street: 'street', house: '38', flat: '12')
    u = User.create(login: 'login1', password: '12345', email: 'asd@example.com',
                    phone_number: '1234456', name: 'kot')
    assert_equal Pet.create(name: 'na', type_pet: tp, description: nil, location: l, user: u).valid?, false
  end

  test 'test pet empty location' do
    tp = TypePet.create(pet_type: 'cat')
    br = Breed.create(name: 'хаски')
    d = Description.create(breed: br, sex: 'male', color: 'grey',
                           special_signs: 'something', age: 5, content: 'something 2.0')
    u = User.create(login: 'login1', password: '12345', email: 'asd@example.com',
                    phone_number: '1234456', name: 'kot')
    assert_equal Pet.create(name: 'na', type_pet: tp, description: d, location: nil, user: u).valid?, false
  end

  test 'test pet empty user' do
    tp = TypePet.create(pet_type: 'cat')
    br = Breed.create(name: 'хаски')
    d = Description.create(breed: br, sex: 'male', color: 'grey',
                           special_signs: 'something', age: 5, content: 'something 2.0')
    l = Location.create(city: 'city', district: 'district', street: 'street', house: '38', flat: '12')
    assert_equal Pet.create(name: 'na', type_pet: tp, description: d, location: l, user: nil).valid?, false
  end
end
