class AddImageToMatriculas < ActiveRecord::Migration[5.2]
  def change
    add_column :matriculas, :image, :string
  end
end
