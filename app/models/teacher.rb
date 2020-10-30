class Teacher < ApplicationRecord
    has_many :enrollments
    has_many :students, :through=>:enrollments
    has_many :subjects, :through=>:enrollments
    enum education: { Graduate: 'Graduate', Masters: 'Masters' }
end
