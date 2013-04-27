class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :body
      t.string :category
      t.references :user
      t.timestamps
    end
  end
end
