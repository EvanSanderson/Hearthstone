class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :effect
      t.integer :attack
      t.integer :defense
      t.integer :decks_id
      t.timestamps
    end
  end
end
