class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.references :subject, index: true
      t.references :student, index: true

      t.timestamps null: false
    end
    add_foreign_key :studies, :subjects
    add_foreign_key :studies, :students
  end
end
