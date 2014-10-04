class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :socsec
      t.string :hospital

      t.timestamps
    end
  end
end
