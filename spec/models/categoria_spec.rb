require 'spec_helper'
load "#{Rails.root}/db/seeds.rb"

describe Categoria do
  it { should validate_presence_of(:nome) }
  it "should be seeded" do 
    categorias = Categoria.find(:all)
    categorias.count.should be > 3
  end
  it "should respect the order of creation" do
    categorias = Categoria.find([1,2,3])
    puts categorias.map {|c| c.nome }
    categorias.map {|c| c.nome }.should be == ["Livros", "Roupas", "Brinquedos"]
  end
end
