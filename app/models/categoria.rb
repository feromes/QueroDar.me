class Categoria < ActiveRecord::Base
  validates :nome, :presence => true
end
