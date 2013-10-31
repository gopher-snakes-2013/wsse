class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.belongs_to :user
      t.string :name
      t.timestamps
    end
  end
end
