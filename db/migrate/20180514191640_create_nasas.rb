class CreateNasas < ActiveRecord::Migration[5.2]
  def change
    create_table :nasas do |t|

      t.timestamps
    end
  end
end
