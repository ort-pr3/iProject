class CreateMatriculas < ActiveRecord::Migration[5.2]
  def change
    create_table :matriculas do |t|
      t.integer :numero
      t.string :nome
      t.integer :ano
      t.string :curso

      t.timestamps
    end
  end
end
