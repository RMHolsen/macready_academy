class CreateEntry < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.belongs_to :portfolio 
      t.string :title 
      t.string :medium 
      t.string :subject 
      t.string :style 
      t.string :url
      t.integer :hours
    end
  end
end
