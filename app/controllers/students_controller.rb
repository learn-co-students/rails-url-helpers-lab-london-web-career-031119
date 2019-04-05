class StudentsController < ApplicationController
  before_action :set_student, only: %i[show activate]

  def index
    @students = Student.all
  end

  def show; end

  def activate

    @student.active = !@student.active
    @student.save
    redirect_to "/students/#{@student.id}"
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end
end
