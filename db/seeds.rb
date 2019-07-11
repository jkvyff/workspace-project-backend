# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Document.destroy_all

# Users
u1 = User.create(username: 'Admin', password: 'Milan', avatar: 'https://upload.wikimedia.org/wikipedia/commons/7/7c/User_font_awesome.svg')

# Documents
d1 = Document.create(extension: 'abc', content: 'Big dreams, big seams')
d2 = Document.create(extension: 'ymble', content: 'Lets work togeather')