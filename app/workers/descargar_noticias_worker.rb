class DescargarNoticiasWorker
  include Sidekiq::Worker

  def perform
    sitios.each do |sitio|
      datos    = ObtenerNoticiasService.new(sitio, "amlo").buscar
      noticias = IndexarNoticiasService.new(sitio, datos).seleccionar

      sitio.noticias.create(noticias)
    end
  end

  private

  def sitios
    @sitios ||= Sitio.all
  end
end
