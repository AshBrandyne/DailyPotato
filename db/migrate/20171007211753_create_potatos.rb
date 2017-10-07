class CreatePotatos < ActiveRecord::Migration[5.1]
  def change
    create_table :potatos do |t|
      t.string :name
      t.string :desc
      t.integer :eyes
      t.integer :mouth

      t.timestamps
    end
  end
end
