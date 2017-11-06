class AddLatitudeToMyhabbits < ActiveRecord::Migration
  def change
    add_column :myhabbits, :latitude, :string
    add_column :myhabbits, :longtitude, :string
  end
end
