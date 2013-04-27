class CreateChallengeUnits < ActiveRecord::Migration
  def change
    create_table :challenge_units do |t|
      t.references :challenge, :null=>false 
      t.references :unit, :null=>false
      t.timestamps
    end
  end
end
