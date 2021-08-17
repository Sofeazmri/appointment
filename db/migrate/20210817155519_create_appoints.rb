class CreateAppoints < ActiveRecord::Migration[5.2]
  def change
    create_table :appoints do |t|
      t.string :name
      t.string :matric
      t.string :phone
      t.string :email
      t.string :services
      t.string :issue
      t.datetime :datetime

      t.timestamps
    end
  end
end
