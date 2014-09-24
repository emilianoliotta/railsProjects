# encoding = utf-8
class TweetsController < ApplicationController
  

  before_action :authenticate_user!, only: [:show, :new, :destroy]

  def new
  	@tweet = Tweet.new
  end

  def default    
  end
  
  def index
  end

  def show
  	@tweet = Tweet.find(params[:id])
  end

  def create
  	#@tweet = Tweet.new(estado:params[:tweet][:estado], monstruo_id: params[:tweet][:monstruo_id])
  	@tweet = Tweet.new(params.require(:tweet).permit([:estado, :monstruo_id]))
  	@tweet.save
  	redirect_to(tweet_path(@tweet))
  end

  def destroy
  	@tweet = Tweet.find(params[:id])
  	@tweet.destroy
    if @tweet.monstruo.critter_star && @tweet.monstruo.tweets.count < 6
       @tweet.monstruo.critter_star = false;
       @tweet.monstruo.save
     end
  	redirect_to(monstruo_path(@tweet.monstruo))
  end
end
