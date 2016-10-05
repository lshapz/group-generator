
# students = ["Amanda Steckler", "Benjamin Henriquez", "Caleb Cox", "Charlie Spencer", "Chris Peleti", "Colby Pines", "Craig Iturbe", "Drew Nickerson", "Eoghan Leddy", "Jake Zappin", "James Segarra", "Jason Arnold", "Jason Gluck", "Jess Harrelson", "Jonathan Peterkin", "Kevin Evans", "Krissa Santos", "Laura Shapiro", "Marc Immediato", "Matt Peleti", "Nick Scaglione", "Niky Morgan", "Niti Patel", "Perry Garet", "Rebecca Yi", "Robert Lin", "Salomé Braganza", "Scott Lindquist", "Thomas Marren", "Wesley Friedman", "Zack Adams"]

students_1 = ["Amanda Steckler", "Benjamin Henriquez", "Caleb Cox", "Charlie Spencer", "Chris Peleti", "Colby Pines", "Craig Iturbe", "Drew Nickerson", "Eoghan Leddy", "Jake Zappin"]
web = Course.new(name: "web", students: students_1)

group1 = Group.new(number_of_students: 3, course: web)
# y = web.student_objects[0].student_group_history.flatten!.reject{|z|"Amanda Steckler"}
group2 = Group.new(number_of_students: 2, course: web)
