class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.column :card_name, :string
      t.column :card_content, :string
      t.column :suit, :string
      t.column :arcana, :string

      t.timestamps
    end
  end
end
