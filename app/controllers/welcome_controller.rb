class WelcomeController < ApplicationController
  def show
  @students = Student.all
  @studies = Study.all
  @subjects = Subject.all
  @attendances = Attendance.all
  @teahcers = Teacher.all
  @teaches = Teach.all
  end
end
