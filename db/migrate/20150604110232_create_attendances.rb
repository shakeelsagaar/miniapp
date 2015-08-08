class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.string :month
      t.string :subject
      t.string :status
      t.references :student, index: true

      t.timestamps null: false
    end
    add_foreign_key :attendances, :students
  end
end
