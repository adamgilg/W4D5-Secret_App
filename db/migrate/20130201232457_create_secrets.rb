class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.string :body
      t.binary :photo
      t.integer :user_id

      t.timestamps
    end
  end
end
