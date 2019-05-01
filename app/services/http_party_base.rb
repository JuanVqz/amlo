class HttpPartyBase
  include HTTParty

  attr_accessor :sitio, :busqueda

  def initialize(sitio, busqueda)
    @sitio    = sitio
    @busqueda = busqueda
  end

end
