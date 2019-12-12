# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
breed1 = Breed.create(name: 'Колли')
breed2 = Breed.create(name: 'Бенгальская')
breed3 = Breed.create(name: 'Мейн кун')
breed4 = Breed.create(name: 'Золотистый ретривер')
type_pet1 = TypePet.create(pet_type: 'кот')
type_pet2 = TypePet.create(pet_type: 'собака')
location1 = Location.create(city: 'Ростов-на-Дону', district: 'Западный', street: 'Стачки', house: '135')
location2 = Location.create(city: 'Ростов-на-Дону', street: 'Ленина', house: '20')
description1 = Description.create(breed: breed2, sex: 'самка', color: 'золотой', age: 1)
description2 = Description.create(breed: breed1, sex: 'самец', color: 'мраморно-голубой', age: 5)
user1 = User.create(login: 'login1', password: 'password', email: 'user1@example.ru', name: 'user_user')
user2 = User.create(login: 'login2', password: 'password', email: 'user2@example.com', phone_number: '8-809-345-12-34', name: 'user2 user')
report_type1 = ReportType.create(name: 'сбор пожертвований')
report_type2 = ReportType.create(name: 'отчёт о питомцах')
report1 = Report.create(title: 'Сбор пожертвований в субботу', content: 'В предыдущую субботу было проведено мероприятие, которое позволит всем котикам и собачкам не умереть от голода', report_type: report_type1)
report2 = Report.create(title: 'Ещё один счастливчик нашёл дом', content: 'Ещё одна семья приобрела друга.', report_type: report_type2)
image1 = Image.create(path: 'E:\rub\image\cat.jpg', owner_id: report2.id)
image2 = Image.create(path: 'E:\rub\image\dog.jpg')
image3 = Image.create(path: 'E:\rub\image\event.jpg', owner_id: report1.id)
event1 = Event.create(image: image3, title: 'Сбор пожертвований', event_date: '2019-12-07 12:00:00', user: user1, location: location1, event_description: 'Данное событие предназначено для сбора пожертвований для приюта "Собаки и коты"')
event2 = Event.create(image: image3, title: 'Благотворительная акция', event_date: '2020-01-01 17:00:00', user: user2, location: location2, event_description: 'Благотворительная акция...')
pet1 = Pet.create(name: 'Бобик', type_pet: type_pet2, description: description2, location: location1, user: user1, image: image2)
pet2 = Pet.create(name: 'Пушок', type_pet: type_pet1, description: description1, location: location2, user: user2, image: image1)




