class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :subject
end
