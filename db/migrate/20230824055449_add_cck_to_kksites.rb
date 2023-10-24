class AddCckToKksites < ActiveRecord::Migration[6.1]
  def change
    add_column :kksites, :cck, :text
  end
end
