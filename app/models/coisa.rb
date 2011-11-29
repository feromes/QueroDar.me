class Coisa < ActiveRecord::Base
  belongs_to :categoria 
  validates_presence_of [:titulo, :descricao]
end
