class Exemplar < ActiveRecord::Base
	belongs_to :produto
	has_many :locacao
	has_many :cliente, :through => :locacao
end
