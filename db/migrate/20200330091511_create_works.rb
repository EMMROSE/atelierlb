class CreateWorks < ActiveRecord::Migration[6.0]
  def change
    create_table :works do |t|
      t.string :title
      t.string :category
      t.string :description
      t.string :preview
      t.string :cover

      t.timestamps
    end
  end
end
