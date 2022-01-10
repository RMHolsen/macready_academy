class CreateCourseload < ActiveRecord::Migration[5.0]
  def change
    create_table :courseloads do |t|
      t.belongs_to :user 
    end
  end
end
