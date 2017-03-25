# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Question.create(title: 'Using active record to validate with error messages', description: 'I have a validation for the title to make sure that there is a minimum of 40 characters, I am unsure of whether the error message will show up with the default validation check.')
Answer.create(description: 'Using active record default validation will show an error message, however if you want to customize it you can add in a notice to the message of your choosing')
