class RenameContactToTransmission < ActiveRecord::Migration
  def change
    rename_table :contacts, :transmissions
  end
end
