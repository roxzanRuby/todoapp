class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      #adding column names and descriptions and #type ie:string and text
      t.string :name
      t.text :description
    end
  end
end
