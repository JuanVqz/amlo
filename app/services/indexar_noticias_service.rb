class IndexarNoticiasService

  attr_accessor :sitio, :datos

  def initialize(sitio, datos)
    @sitio = sitio
    @datos = datos
  end

  def seleccionar
    noticias_nuevas.map do |noticia|
      {
        id_original: noticia["id"],
        titulo: noticia["title"]["rendered"],
        descripcion_corta: noticia["excerpt"]["rendered"],
        url: noticia["link"],
        fecha: noticia["date"]
      }
    end
  end

  private

  def noticias_nuevas
    noticias = datos.select{ |dato| sitio.ultimo_indexado < dato["id"] }

    if noticias.present?
      sitio.ultimo_indexado = noticias.first["id"]
      sitio.save
    end

    noticias
  end
end
