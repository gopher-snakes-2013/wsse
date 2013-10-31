class CreateVotesTable < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.belongs_to :user
      t.belongs_to :comment
      t.boolean :opinion
      t.timestamps
    end
  end
end
