class CreateKksites < ActiveRecord::Migration[6.1]
  def change
    create_table :kksites do |t|
      t.text:cc
      t.integer :user_id
      t.string :image
      t.timestamps
    end
  end
end

