class ObtenerNoticiasService < HttpPartyBase

  def buscar
    self.class.get(sitio.url, { query: { search: busqueda } } )
  end

end
