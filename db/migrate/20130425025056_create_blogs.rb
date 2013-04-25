class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.column :name, :string
      t.column :user_id, :integer, null: false
      t.index :user_id

      t.timestamps
    end
  end
end
