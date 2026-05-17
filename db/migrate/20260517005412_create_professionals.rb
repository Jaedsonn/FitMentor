# frozen_string_literal: true

class CreateProfessionals < ActiveRecord::Migration[6.1]
  def change
    create_table :professionals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :cref, null: false
      t.text :bio
      t.string :profile_image_url

      t.index :cref, unique: true

      t.timestamps
    end
  end
end
