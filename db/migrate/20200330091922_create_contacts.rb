class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :message

      t.timestamps
    end
  end
end
