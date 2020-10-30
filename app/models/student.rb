class Student < ApplicationRecord
    has_many :enrollments
    has_many :teachers, :through=>:enrollments
    has_many :subjects, :through=>:enrollments
end
