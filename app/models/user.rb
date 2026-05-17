# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :professional_profile, class_name: 'Professional', foreign_key: 'user_id', dependent: :destroy
  has_one :student_profile, class_name: 'Student', foreign_key: 'user_id', dependent: :destroy

  validates :name, presence: true, length: { minimum: 3 }
  validates :city, presence: true
  validates :birth_date, presence: true
  validates :state, presence: true

  has_one_attached :profile_image

  def professional?
    professional_profile.present?
  end

  def student?
    student_profile.present?
  end

  def user_profile_complete?
    professional_profile.present? || student_profile.present?
  end
end
