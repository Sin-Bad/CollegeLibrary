class AddGenToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :gen, :string
  end
end
