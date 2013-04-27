class CreateCohorts < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :name, :null=>false
      t.timestamps
    end
  end
end
