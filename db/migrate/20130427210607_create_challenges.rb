class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title, :null=>false
      t.text :body, :null=>false
      t.boolean :required, :default=>false
      t.references :user
      t.timestamps
    end
  end
end
