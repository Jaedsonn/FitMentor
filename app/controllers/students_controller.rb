class StudentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @student = current_user.build_student_profile
  end

  def create
    @student = current_user.build_student_profile(student_params)

    if @student.save
      redirect_to student_path(@student), notice: 'Student profile created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def student_params
    params.require(:student).permit(:workout_time, :workout_goal, :dietary_restrictions, :physical_limitations, :weight, :height, :medical_notes)
  end
end
