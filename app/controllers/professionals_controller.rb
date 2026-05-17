# frozen_string_literal: true

class ProfessionalsController < ApplicationController
  before_action :authenticate_user!

  def new
    @professional = current_user.build_professional_profile
  end

  def create
    @professional = current_user.build_professional_profile(professional_params)

    if @professional.save
      redirect_to professional_path(@professional), notice: 'Professional profile created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def professional_params
    params.require(:professional).permit(:cref, :bio)
  end
end
