# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
    {document: 12345678, email: "admin@test.com", name: "ADMIN", password: "password_admin", password_confirmation: 'password_admin', role: 1},
    {document: 87654321, email: "user@test.com", name: "USUARIO", password: "password_user",password_confirmation: 'password_user', role: 2}
])
