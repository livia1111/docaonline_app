class Locacao < ActiveRecord::Base
	belongs_to :exemplar
	belongs_to :cliente
end
