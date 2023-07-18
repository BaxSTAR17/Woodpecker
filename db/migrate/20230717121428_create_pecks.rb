class CreatePecks < ActiveRecord::Migration[7.0]
  def change
    create_table :pecks do |t|
      t.string :post
      t.integer :poster_id
      t.string :tree
      t.integer :pecks

      t.timestamps
    end
  end
end
