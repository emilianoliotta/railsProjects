class Monstruo < ActiveRecord::Base
  has_many :tweets, dependent: :destroy
  has_many :victimas, dependent: :destroy
  default_scope -> { order :nombre }
end
