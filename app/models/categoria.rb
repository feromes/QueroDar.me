class Categoria < ActiveRecord::Base   
  has_many :coisas
  validates_presence_of :nome
end
