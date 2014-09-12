class MonstruosController < ApplicationController

	before_action :get_monstruo, only: [:show, :edit, :destroy]
	before_action :verify_tweets, only: [:show]

	def index
	end

	def show
	end

	def edit
	    
	end
	  
	def destroy
	  	@monstruo.destroy
	  	redirect_to(monstruos_path)
	end

	def get_monstruo
		@monstruo = Monstruo.find(params[:id])
	end

	def verify_tweets 
		if @monstruo.tweets.count == 0
			redirect_to(monstruos_path, notice: "El monstruo no tiene ningun tweet.")
		end
	end
end
