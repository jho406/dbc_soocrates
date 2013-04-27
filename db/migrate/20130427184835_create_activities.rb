class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :body
      t.string :type
      t.timestamps
    end
  end
end
