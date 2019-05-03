class CreateNoticias < ActiveRecord::Migration[5.2]
  def change
    create_table :noticias do |t|
      t.integer :id_original
      t.string :titulo
      t.string :descripcion_corta
      t.string :url
      t.string :contenido
      t.datetime :fecha, default: -> { 'CURRENT_TIMESTAMP' }
      t.references :sitio, foreign_key: true

      t.timestamps
    end
  end
end
