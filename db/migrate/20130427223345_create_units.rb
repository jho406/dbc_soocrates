class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :title, :null=>false
      t.references :phase, :null=>false
      t.timestamps
    end
  end
end
