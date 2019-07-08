class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.references :matricula, foreign_key: true
      t.string :nome

      t.timestamps
    end
  end
end
