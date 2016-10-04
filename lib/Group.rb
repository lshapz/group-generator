class Group

attr_accessor :name, :number_of_students, :course, :who_to_group

@@all = []

def initialize(name:, number_of_students:, course:)
  @name = name
  @number_of_students = number_of_students
  @course = course
  @@all << self   
end 

def who_to_group
  @course.student_id_name_hash
end 

def group_things
  array_of_groups = []
  student_ids_array = who_to_group.keys 

  random_students = student_ids_array.shuffle
  random_student_groups = random_students.each_slice(@number_of_students) {|x| array_of_groups << x }
  #who_to_group.each_with_index(@number_of_students) {|person, index|  person = index}
  if student_ids_array.length % @number_of_students == 1
   lone_student = array_of_groups.pop 
   array_of_groups.first << lone_student
   array_of_groups.first.flatten!
   #binding.pry
  end
  array_of_groups.map {|num_group| num_group.map {|student_id| who_to_group[student_id]}}

  #array_of_groups 
  #binding.pry
end 

def self.all
  @@all
end 

end 