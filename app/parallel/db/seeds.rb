# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([
  {name: 'Max', email: 'max@parallel.com', password: 'password', password_confirmation: 'password'},
  {name: 'Luv', email: 'luv@parallel.com', password: 'password', password_confirmation: 'password'},
  {name: 'Connor', email: 'connor@parallel.com', password: 'password', password_confirmation: 'password'},

])

Book.create([
  {title: 'automation-and-robotics', img: 'automation-and-robotics.jpg', pdf: 'automation-and-robotics.pdf', price: 20.0},
  {title: 'basics-of-accounting-information-processing', img: 'basics-of-accounting-information-processing.jpg', pdf: 'basics-of-accounting-information-processing.pdf', price: 20.0},
  {title: 'cost-analysis', img: 'cost-analysis.jpg', pdf: 'cost-analysis.pdf', price: 19.50},
  {title: 'english', img: 'english.jpg', pdf: 'english.pdf', price: 19.50},
  {title: 'essential-study-skills.jpg', img: 'essential-study-skills.jpg', pdf: 'essential-study-skills.pdf', price: 19.50},
  {title: 'how-to-write-an-essay', img: 'how-to-write-an-essay.jpg', pdf: 'how-to-write-an-essay.pdf', price: 19.50},
  {title: 'hrm-managing-the-human-ressource', img: 'hrm-managing-the-human-ressource.jpg', pdf: 'hrm-managing-the-human-ressource.pdf', price: 19.50},
  {title: 'innovative-service-design-workbook', img: 'innovative-service-design-workbook.jpg', pdf: 'innovative-service-design-workbook.pdf', price: 19.50},
  {title: 'modern-microeconomics', img: 'modern-microeconomics.jpg', pdf: 'modern-microeconomics.pdf', price: 19.50},
  {title: 'technology-based-entrepreneurship', img: 'technology-based-entrepreneurship.jpg', pdf: 'technology-based-entrepreneurship.pdf', price: 19.50},
  {title: 'working-capital-strategic-management-exercises', img: 'working-capital-strategic-management-exercises.jpg', pdf: 'working-capital-strategic-management-exercises.pdf', price: 19.50},

])
