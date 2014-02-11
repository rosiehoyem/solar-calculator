class AddAcMonthlyToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :ac_monthly, :string, array: true
    add_column :projects, :dc_monthly, :string, array: true
    add_column :projects, :solrad_monthly, :string, array: true
    add_column :projects, :ac_annual, :string
    add_column :projects, :solrad_annual, :string
  end
end
