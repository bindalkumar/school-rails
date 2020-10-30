require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  test "should have one student" do
    @teacher = teachers(:t1)
    assert_equal 1, @teacher.students.size
  end
end
