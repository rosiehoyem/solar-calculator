class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :address
      t.string :latitude
      t.string :longitude
      t.string :system_size
      t.string :derate
      t.string :tilt

      t.timestamps
    end
  end
end
