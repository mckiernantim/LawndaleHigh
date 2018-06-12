class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :f_name
      t.string :l_name
      t.integer :age
      t.integer :highes_grade

      t.timestamps
    end
  end
end
