class Coisa < ActiveRecord::Base
  belongs_to :categoria 
  validate :titulo, :descricao, :presence => true
end
