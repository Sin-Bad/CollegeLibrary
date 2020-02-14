class AddStudentIdToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :student_id, :integer
  end
end
