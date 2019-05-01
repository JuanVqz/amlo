class CambiarFormatoNoticiasService

  attr_accessor :datos

  def initialize(datos)
    @datos = datos
  end

  def generar
    datos.map do |dato|
      {
        id: dato["id"],
        titulo: dato["title"]["rendered"],
        descripcion_corta: dato["excerpt"]["rendered"],
        url: dato["link"],
        fecha: dato["date"]
      }
    end
  end
end
