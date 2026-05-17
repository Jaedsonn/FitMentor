# frozen_string_literal: true

class Professional < ApplicationRecord
  belongs_to :user

  validates :cref, presence: true, unique: true
  validates :bio, presence: true
  before_save :normalize_cref

  def normalize_cref
    self.cref = cref.upcase
  end
end
