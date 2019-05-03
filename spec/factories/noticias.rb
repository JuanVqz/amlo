FactoryBot.define do
  factory :noticia do
    id_original { 1 }
    titulo { "MyString" }
    descripcion_corta { "MyString" }
    url { "MyString" }
    contenido { "MyString" }
    fecha { Date.new(2019, 04, 28) }
    sitio { nil }
  end
end
