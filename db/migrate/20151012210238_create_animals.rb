class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :locality
      t.string :enemy

      t.timestamps
    end
  end
end
