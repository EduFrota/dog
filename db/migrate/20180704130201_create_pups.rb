class CreatePups < ActiveRecord::Migration[5.1]
  def change
    create_table :pups do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :genre
      t.string :vaccine
      t.string :pedigree
      t.string :mothername
      t.string :namefather
      t.string :rg
      t.string :temperament
      t.float :length
      t.float :alturacernelha
      t.string :tipopelo
      t.string :corpelo
      t.float :weigth

      t.timestamps
    end
  end
end
