class Group

attr_accessor :number_of_students, :course, :who_to_group, :shuffles

@@all = []
@@group_history = []

# @@group_history_2 = []
# @@group_history_3 = []
# @@group_history_more = []

def initialize(number_of_students:, course:)
  @number_of_students = number_of_students
  @course = course
  @@all << self
end

def who_to_group
  @course.student_id_name_hash #{1=> Student Object}
end

def shuffles
  array_of_groups = []
  student_ids_array = who_to_group.keys #Array of Student Objects [Zack, Laura, Scott, Krissa , Avi, Adam]
  random_students = student_ids_array.shuffle #[Laura, Zack, Scott, Krissa , Avi, Adam]
  random_student_groups = random_students.each_slice(@number_of_students) {|x| array_of_groups << x } #[[Laura, Zack],[Krissa, ],[]]
  shuffled_groups_by_object = array_of_groups.map! {|num_group| num_group.map {|student_id| who_to_group[student_id]}}
end

def worked_together
  previous_groups = []
  shuffles.each do |sub_group|
    check_group = sub_group
    sub_group.each do |student_object|
      previous_groups << student_object.student_group_history & check_group
    end
  end
  previous_groups
end

def re_shuffles

  never_worked_together = shuffles - worked_together #an array of arrays of uniqe groups
  never_worked_together.map do | valid_groups|
    if valid_groups.length < @number_of_students
      sample_student = worked_together.flatten!.sample(1)
      worked_together.delete(sample_student)
      valid_groups << sample_student
    end
  end

end

def add_to_student_history
  self.shuffles.each do |sub_group|
    sub_group.each do |student_object|
      student_object.student_group_history << sub_group
    end
  end
end

# def add_to_student_history
#   self.shuffles.each do |sub_group|
#     sub_group.each do |student_name|
#
#       Student.all.each do |student_object|
#         if student_object.name == student_name
#           student_object.student_group_history << sub_group
#         end
#       end
#     end
#   end
# end


# if @number_of_students == 2
#   @@group_history_2 << array_of_groups
# elsif @number_of_students == 3
#   @@group_history_3 << array_of_groups
# else
#   @@group_history_more << array_of_groups
#end
# @@group_history = array_of_groups






  def self.group_history
    @@group_history
  end

def self.all
  @@all
end

end

#

## def REMAINDERS

#who_to_group.each_with_index(@number_of_students) {|person, index|  person = index}
#  if student_ids_array.length % @number_of_students == 1
#   lone_student = array_of_groups.pop
#   array_of_groups.first << lone_student
#   array_of_groups.first.flatten!
# elsif
#   student_ids_array.length % @number_of_students == 2
#   lone_student = array_of_groups.pop
#   array_of_groups.first << lone_student
#   array_of_groups.first.flatten!
#   new_group_size = array_of_groups.first.length / 2
#   array_of_groups.first.each_slice(new_group_size) {|new_group| array_of_groups << new_group}
#   array_of_groups.shift
#   #binding.pry
#  end


# if number_of_students <5 then:
# access student history through groups
# check current group against student history(@course.student_objects.groups)
# if intersection of that
# stud_groups.each ? array_of_groups.each
# have student name reference its object
# get that object's group history
# check that history against the other objects it shares an array with
