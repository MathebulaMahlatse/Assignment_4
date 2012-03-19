class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :surname
      t.integer :student_number
      t.string :email, :string
      t.integer :id_no, :integer
      t.string :password
      t.string :campus	
      t.timestamps
    end
  end
end
