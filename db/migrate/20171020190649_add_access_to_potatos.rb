class AddAccessToPotatos < ActiveRecord::Migration[5.1]
  def change
    add_column :potatos, :access, :string
  end
end
