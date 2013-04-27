class CreatePhases < ActiveRecord::Migration
  def change
    create_table :phases do |t|
      t.string :title, :null=>false
      t.references :cohort, :null=>false
      t.timestamps
    end
  end
end
