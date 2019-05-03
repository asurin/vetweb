class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.datetime :dob
      t.string :animal
      t.timestamps
    end
  end
end

#:name, :age, :animal,
