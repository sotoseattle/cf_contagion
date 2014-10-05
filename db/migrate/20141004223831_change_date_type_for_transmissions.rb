class ChangeDateTypeForTransmissions < ActiveRecord::Migration
  def up
    change_column :transmissions, :date, :date
  end

  def down
    change_column :transmissions, :date, :string
  end
end
