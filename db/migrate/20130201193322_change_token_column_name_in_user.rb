class ChangeTokenColumnNameInUser < ActiveRecord::Migration
  def change
    rename_column :users, :token, :session_token
  end

end
