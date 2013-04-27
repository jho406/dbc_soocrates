class AddDueToChallengeUnits < ActiveRecord::Migration
  def change
    add_column :challenge_units, :due_date, :date
  end
end
