# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'


tareas = ['Revisar bug 345', 
          'Subir a producción', 
          'Testear arreglo de inicio de sesión', 
          'inicio de sesión con facebook', 
          'implementar Mandrill para enviar mails', 
          'S3 para almacenamiento de archivos', 
          'Maqueteo de mejoras en la presentación de artículos', 
          'Implementar MongoDB', 
          'Implementar Angular', 
          'Transformas vistas a Responsive Design']

10.times do |i|
  Task.create(name: tareas[i], 
              desc: Faker::Lorem.paragraph(2), 
              image: Faker::LoremPixel.image("400x200", false, 'people', i+1)
              )
end

10.times do  |i|
  User.create(name: Faker::Name.name, 
              email: Faker::Internet.email, 
              password: '123456', 
              image: Faker::LoremPixel.image("100x100", false, 'people', i+1)
              )
end

20.times do
  Doing.create( user_id: User.all.pluck(:id).sample, 
                task_id: Task.all.pluck(:id).sample, 
                completed: [ true, false].sample)
end