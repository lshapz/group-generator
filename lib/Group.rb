class Group

attr_accessor :name, :number_of_students, :course, :who_to_group 

@@all = []
@@group_history = []

# @@group_history_2 = []
# @@group_history_3 = []
# @@group_history_more = []

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
  array_of_groups.map! {|num_group| num_group.map {|student_id| who_to_group[student_id]}}
  #if  @@group_history.any? == array_of_groups.any?

  # array_of_groups.each {|group_by_name| group_by_name.each {|name| if name == @student_objects.name
  #      @student_objects.groups  << group_by_name - name
  #    end 
  #   }}

  #if array_of_groups.any? &(2 students) @@group_history.each.each.each 
    #then re-shuffle? 
  #array_of_groups 
  #binding.pry


# if @number_of_students == 2
#   @@group_history_2 << array_of_groups 
# elsif @number_of_students == 3
#   @@group_history_3 << array_of_groups
# else
#   @@group_history_more << array_of_groups
#end
@@group_history = array_of_groups 

array_of_groups
 

end 

  def self.group_history
    @@group_history
  end 

def self.all
  @@all
end 

end 