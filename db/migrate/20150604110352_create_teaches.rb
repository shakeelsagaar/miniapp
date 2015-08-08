class CreateTeaches < ActiveRecord::Migration
  def change
    create_table :teaches do |t|
      t.references :teacher, index: true
      t.references :subject, index: true

      t.timestamps null: false
    end
    add_foreign_key :teaches, :teachers
    add_foreign_key :teaches, :subjects
  end
end
