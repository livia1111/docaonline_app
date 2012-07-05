class Produto < ActiveRecord::Base

	def qualidade_enum
	   #all_status = {1 => 'Active', 0 => 'Pending', 2 => 'Banned'}
	   #all_status.map{|key, val| [val, key]}
	   #[]
	end

	has_many :exemplar
	belongs_to :categorium
	validate :has_categoria?

	def has_categoria?
		errors.add_to_base "Produto deve  ter uma categoria" if self.categorias.blank?
	end
end
