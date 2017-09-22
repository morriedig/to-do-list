class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
    	t.string :title                
    	t.date :date
    	t.date :due_date
    	t.text :description
    	t.text :detail
    	t.string :file_location
      t.timestamps
    end
  end
end
