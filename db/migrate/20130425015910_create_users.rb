class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.column :email, :string, null: false
      t.column :password_digest, :string, null: false
      t.timestamps
    end
  end
end
