# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Destroy all Works'
Work.destroy_all
puts 'Destroy all users'
User.destroy_all
puts '>>>>>> Done!'
puts '----------------'


puts 'Create users'
@user1 = User.new(email: 'user1@gmail.com', password:'123456')
@user1.save!
puts '>>>>>> Done!'
puts '----------------'

puts 'Create Works'
@work1 = Work.new(title: 'Verrière pour cuisine', category:'verrière')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
@work1.cover.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
preview_files = []
preview_file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/charpente.jpg')
preview_file2 = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/vitrine.jpg')
preview_hash = {io: preview_file, filename: 'verriereun.jpg', content_type: 'image/jpg'}
preview_files << preview_hash
preview_hash = {io: preview_file2, filename: 'verrieredeux.jpg', content_type: 'image/jpg'}
preview_files << preview_hash
@work1.previews.attach(preview_files)
@work1.save!
puts 'Works#1 created'

@work2 = Work.new(title: 'Charpente de ferme', category:'charpente')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/charpente.jpg')
@work2.cover.attach(io: file, filename: 'charpente.jpg', content_type: 'image/jpg')
@work2.save!

@work3 = Work.new(title: 'Vitrine de restaurant', category:'vitrine')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/vitrine.jpg')
@work3.cover.attach(io: file, filename: 'vitrine.jpg', content_type: 'image/jpg')
@work3.save!

@work4 = Work.new(title: 'Véranda de jardin', category:'véranda')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/vitrine.jpg')
@work4.cover.attach(io: file, filename: 'vitrine.jpg', content_type: 'image/jpg')
@work4.save!

@work5 = Work.new(title: 'Verrière pour chambre', category:'verrière')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/verriere.jpg')
@work5.cover.attach(io: file, filename: 'verriere.jpg', content_type: 'image/jpg')
@work5.save!

@work6 = Work.new(title: 'Charpente pour atelier', category:'charpente')
file = URI.open('https://res.cloudinary.com/dwrzyhvzy/image/upload/v1585089570/atelier/charpente.jpg')
@work6.cover.attach(io: file, filename: 'charpente.jpg', content_type: 'image/jpg')
@work6.save!

puts '>>>>>> Done!'
puts "#{Work.count} Works created!"
puts '----------------'
