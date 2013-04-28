class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.string :title, :null=>false
      t.text  :body, :null=>false
      t.references :chirpable, :polymorphic=>true
      t.timestamps
    end
  end
end
