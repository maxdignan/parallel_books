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
  {title: 'Automation and Robotics', isbn:'9781578200306', author: 'Alan C.', img: 'automation-and-robotics.jpg', pdf: 'automation-and-robotics.pdf', price: 20.0},
  {title: 'Basics of Accounting-information-processing', isbn:'9781884512490', author: 'A. Dowl', img: 'basics-of-accounting-information-processing.jpg', pdf: 'basics-of-accounting-information-processing.pdf', price: 20.0},
  {title: 'Cost Analysis', isbn:'9782809433654', author: 'L. Jain', img: 'cost-analysis.jpg', pdf: 'cost-analysis.pdf', price: 19.50},
  {title: 'English', isbn:'9780595206162', author: 'J.V. Rossenburg', img: 'english.jpg', pdf: 'english.pdf', price: 19.50},
  {title: 'Essential Study Skills', isbn:'9780965783545', author: 'William Derek', img: 'essential-study-skills.jpg', pdf: 'essential-study-skills.pdf', price: 19.50},
  {title: 'How to Write an Essay',isbn:'9781615795369', author: 'Cody Winheiser', img: 'how-to-write-an-essay.jpg', pdf: 'how-to-write-an-essay.pdf', price: 19.50},
  {title: 'HRM Managing the Human Ressource', isbn:'9780425229583', author: 'Levi Von Strauss', img: 'hrm-managing-the-human-ressource.jpg', pdf: 'hrm-managing-the-human-ressource.pdf', price: 19.50},
  {title: 'Innovative Service Design Workbook', isbn:'9781416590231', author: 'Mary Poppins II', img: 'innovative-service-design-workbook.jpg', pdf: 'innovative-service-design-workbook.pdf', price: 19.50},
  {title: 'Modern Microeconomics', isbn:'9780761113119', author: 'Jamey Diamon', img: 'modern-microeconomics.jpg', pdf: 'modern-microeconomics.pdf', price: 19.50},
  {title: 'Technology Based-Entrepreneurship', isbn:'9780793828029', author: 'Murk Zackerburg', img: 'technology-based-entrepreneurship.jpg', pdf: 'technology-based-entrepreneurship.pdf', price: 19.50},
  {title: 'Working Capital Strategic Management Exercises', isbn:'9780307106032', author: 'M.D. Richfield', img: 'working-capital-strategic-management-exercises.jpg', pdf: 'working-capital-strategic-management-exercises.pdf', price: 19.50},

])
