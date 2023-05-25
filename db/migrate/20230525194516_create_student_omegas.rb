class CreateStudentOmegas < ActiveRecord::Migration[7.0]
  def change
    create_table :student_omegas do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :year
      t.string :hometown
      t.string :high_school
      t.string :instagram
      t.string :snapchat
      t.string :highschool_activities

      t.timestamps
    end
  end
end
