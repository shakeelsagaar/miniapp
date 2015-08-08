class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :student_name
      t.string :father_name
      t.integer :rollnumber
      t.string :course
      t.string :semester

      t.timestamps null: false
    end
  end
end
