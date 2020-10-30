# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Enrollment.destroy_all
Student.destroy_all
Teacher.destroy_all
Subject.destroy_all

subjects = [
  [ "Java", 'Java Description' ],
  [ "PHP", 'PHP Description' ],
  [ "ReactJS", 'ReactJS Description' ]
]

subjects.each do |name, description|
    Subject.create( name: name, description: description )
end

students = [
  [ "Aarav", 1, 'Raman' ],
  [ "Vidushi", 2, 'Patel' ]
]

students.each do |name, roll_no, house|
    Student.create( name: name, roll_no: roll_no, house: house )
end

teachers = [
  [ "Kumar", 'Graduate' ],
  [ "Abhi", 'Masters' ]
]

teachers.each do |name, education|
    Teacher.create( name: name, education: education )
end

enrollments = [
    [Subject.find_by_name('Java').id, Student.find_by_name('Aarav').id, Teacher.find_by_name('Kumar').id],
    [Subject.find_by_name('PHP').id, Student.find_by_name('Aarav').id, Teacher.find_by_name('Abhi').id]
]

enrollments.each do |sub_id, stud_id, teacher_id|
    Enrollment.create( subject_id: sub_id, student_id: stud_id, teacher_id: teacher_id )
end