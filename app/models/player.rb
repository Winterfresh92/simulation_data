class Player < ActiveRecord::Base
	has_many :games
	validates :name, presence: true
	validates :birthday, presence: true
end
