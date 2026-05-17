class RemoveImageUrlColumnFromProfessional < ActiveRecord::Migration[6.1]
  def change
    remove_column :professionals, :profile_image_url
  end
end
