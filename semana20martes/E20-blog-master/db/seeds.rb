# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Post.destroy_all
User.destroy_all

10.times do |i|
  user = User.create(name: "User#{i}", email: "user#{i}@gmail.com", password: "123456")
  user.visit!
  post = Post.create(title: "Post #{i}", content: "contenido #{i} de usuario #{i}", user: user)
  10.times do |j|
    comment = post.comments.build(content: "comentario #{j}", user_id: User.all.pluck(:id).sample, post: post)
    comment.save
  end
end

user_admin = User.create(name: "User administrador", email: "user.admin@gmail.com", password: "123456")
user_admin.admin!

