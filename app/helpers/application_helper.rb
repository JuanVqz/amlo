module ApplicationHelper
  def ruta_actual ruta
    'active' if request.path.include? ruta
  end
end
