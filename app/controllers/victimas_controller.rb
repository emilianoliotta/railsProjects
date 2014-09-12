class VictimasController < ApplicationController
	def index
		@victimas = Victima.all
	end
	
	def destroy
		v = Victima.find(params[:id])
		v.destroy
		redirect_to(victimas_path)
	end

	def show
		@victima = Victima.find(params[:id])

	end
end
