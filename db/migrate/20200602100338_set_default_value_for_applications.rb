class SetDefaultValueForApplications < ActiveRecord::Migration[6.0]
  def change
    change_column :applications, :sent, :boolean, default: false
  end
end
