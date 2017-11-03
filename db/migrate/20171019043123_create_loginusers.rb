class CreateLoginusers < ActiveRecord::Migration
  def change
    create_table :loginusers do |t|
      t.string :username
      t.string :userid
      t.string :userpw

      t.timestamps null: false
    end
  end
end
