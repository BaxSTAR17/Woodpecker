class AddUserIdToPeck < ActiveRecord::Migration[7.0]
  def change
    add_column :pecks, :user_id, :integer
  end
end
