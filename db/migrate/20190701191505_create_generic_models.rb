class CreateGenericModels < ActiveRecord::Migration[5.2]
  def change
    create_table :generic_models do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
