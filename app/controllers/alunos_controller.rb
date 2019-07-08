class AlunosController < ApplicationController

	def index
		@alunos = Aluno.order(:nome)
	end

	def show
	end

	def outracoisa
	end
end
