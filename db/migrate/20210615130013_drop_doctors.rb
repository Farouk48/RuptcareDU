class DropDoctors < ActiveRecord::Migration[6.0]
  def change
    drop_table :doctors do |t|
      t.string :full_name, null: false
      t.string :rpps_number, null: false
      t.string :speciality, null: false
      t.timestamps null: false
    end
  end
end
