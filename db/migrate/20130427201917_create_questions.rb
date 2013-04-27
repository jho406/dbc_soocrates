class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body, :null=>false
      t.boolean :resolved, :default=>false
      t.references :user
      t.timestamps
    end
  end
end
