class CreatePortfolio < ActiveRecord::Migration[5.0]
  def change
    create_table :portfolios do |t|
      t.belongs_to :user 
      t.string :name 
      t.text :description 
    end
  end
end
