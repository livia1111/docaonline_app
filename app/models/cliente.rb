class Cliente < ActiveRecord::Base
	has_many :locacao
	has_many :exemplar, :through => :locacao
end
