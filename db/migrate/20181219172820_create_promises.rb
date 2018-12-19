class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.string :status, default: 'in progress'
      t.string :person
      t.timestamps
    end
  end
end
