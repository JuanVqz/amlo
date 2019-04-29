class CreateSitios < ActiveRecord::Migration[5.2]
  def change
    create_table :sitios do |t|
      t.string :nombre
      t.string :descripcion
      t.string :url
      t.integer :ultimo_indexado, default: 0

      t.timestamps
    end
  end
end
