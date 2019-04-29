FactoryBot.define do
  factory :sitio do
    sequence(:nombre) { |n| "MyString#{n}" }
    descripcion { "MyString" }
    sequence(:url) { |n| "MyString#{n}" }
    ultimo_indexado { 0 }
  end
end
