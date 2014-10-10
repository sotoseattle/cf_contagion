class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :patient, index: true
      t.references :infected, index: true
      t.string :location
      t.string :date

      t.timestamps
    end
  end
end
