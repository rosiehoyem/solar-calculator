class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.float :system_size
      t.float :derate
      t.float :tilt

      t.timestamps
    end
  end
end