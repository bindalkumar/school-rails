require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "should have two teachers" do
    @student = students(:stud1)
    assert_equal 2, @student.teachers.size
  end
  test "should have no teacher" do
    @student = students(:stud2)
    assert_equal 0, @student.teachers.size
  end
end
