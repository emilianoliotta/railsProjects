class Tweet < ActiveRecord::Base
  belongs_to :monstruo

  after_save :critter_star

  def critter_star
  	if self.monstruo.tweets.count > 5
  		self.monstruo.critter_star = true
  		self.monstruo.save
  	end
  end

end
