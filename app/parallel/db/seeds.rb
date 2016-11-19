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
  {title: 'Automation and Robotics', img: 'automation-and-robotics.jpg', pdf: 'automation-and-robotics.pdf', price: 20.0},
  {title: 'Basics of Accounting-information-processing', img: 'basics-of-accounting-information-processing.jpg', pdf: 'basics-of-accounting-information-processing.pdf', price: 20.0},
  {title: 'Cost Analysis', img: 'cost-analysis.jpg', pdf: 'cost-analysis.pdf', price: 19.50},
  {title: 'English', img: 'english', pdf: 'english.pdf', price: 19.50},
  {title: 'Essential Study Skills', img: 'essential-study-skills.jpg', pdf: 'essential-study-skills.pdf', price: 19.50},
  {title: 'How to Write an Essay', img: 'how-to-write-an-essay.jpg', pdf: 'how-to-write-an-essay.pdf', price: 19.50},
  {title: 'HRM Managing the Human Ressource', img: 'hrm-managing-the-human-ressource.jpg', pdf: 'hrm-managing-the-human-ressource.pdf', price: 19.50},
  {title: 'Innovative Service Design Workbook', img: 'innovative-service-design-workbook.jpg', pdf: 'innovative-service-design-workbook.pdf', price: 19.50},
  {title: 'Modern Microeconomics', img: 'modern-microeconomics.jpg', pdf: 'modern-microeconomics.pdf', price: 19.50},
  {title: 'Technology Based-Entrepreneurship', img: 'technology-based-entrepreneurship.jpg', pdf: 'technology-based-entrepreneurship.pdf', price: 19.50},
  {title: 'Working Capital Strategic Management Exercises', img: 'working-capital-strategic-management-exercises.jpg', pdf: 'working-capital-strategic-management-exercises.pdf', price: 19.50},

])
