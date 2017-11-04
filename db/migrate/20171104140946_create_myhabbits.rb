class CreateMyhabbits < ActiveRecord::Migration
  def change
    create_table :myhabbits do |t|
      
      t.string :habbitname

      t.timestamps null: false
    end
  end
end
