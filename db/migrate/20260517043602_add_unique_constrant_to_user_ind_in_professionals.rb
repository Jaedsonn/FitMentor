class AddUniqueConstrantToUserIndInProfessionals < ActiveRecord::Migration[6.1]
  def change
    change_column :professionals, :user_id, :integer, index: { unique: true }
  end
end
