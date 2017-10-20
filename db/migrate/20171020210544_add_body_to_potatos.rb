class AddBodyToPotatos < ActiveRecord::Migration[5.1]
  def change
    add_column :potatos, :body, :integer
  end
end
