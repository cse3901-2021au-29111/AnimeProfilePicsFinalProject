require "test_helper"

class StudentTest < ActiveSupport::TestCase
  def setup
    @student = Student.new(fname: "Example", email: "user@example.com",
    password: "foobar", password_confirmation: "foobar")
    end


    test "password should be present (nonblank)" do
      @student.password = @student.password_confirmation = " " * 6
      assert_not @student.valid?
      end


      test "password should have a minimum length" do
      @student.password = @student.password_confirmation = "a" * 5
      assert_not @student.valid?
      end
end
