# frozen_string_literal: true

class Student < ApplicationRecord
  belongs_to :user

  validates :workout_goal, :workout_time, :weight, :height, presence: true
end
