class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.belongs_to :house, index: true
      t.timestamps null: false
    end
  end
end
