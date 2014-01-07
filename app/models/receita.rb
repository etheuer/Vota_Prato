class Receita < ActiveRecord::Base
	validates_precence_of :conteudo, message: " - deve ser preenchido"

	belongs_to :prato

	validates_precence_of :prato_id
	validates_associated :prato

end