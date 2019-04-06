class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
    students_path
  end

  def show
    student_path(set_student)
  end

  def activate
    std = set_student
    std.active ? std.active = false : std.active = true
    std.save
    redirect_to student_path(std)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
