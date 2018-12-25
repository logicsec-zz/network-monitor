class Mibs < ActiveRecord::Migration[5.2]
  def change
    create_table :mibs do |t|
      t.integer :mib_id
      t.string :name
      t.string :oid

      t.timestamps
    end
  end
end
