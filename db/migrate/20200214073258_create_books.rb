class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :bookname
      t.string :authorname
      t.text :description

      t.timestamps
    end
  end
end
