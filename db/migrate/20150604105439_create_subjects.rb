class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject_code
      t.string :subject_title

      t.timestamps null: false
    end
  end
end
