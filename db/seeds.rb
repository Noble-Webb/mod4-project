# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Note.destroy_all
 
john = User.create(username: "CashMoneyJohnny", password: 'haha',profile_pic: "https://images.unsplash.com/photo-1607036086835-60fd1bc2bda7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")

note = Note.create(author: "CashMoneyJohnny" , title: "space-chase", content: "1, 2, 3, 4, 5", image_url: "https://images.unsplash.com/photo-1607036086835-60fd1bc2bda7?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80", votes: 20, user_id: 1 ) 