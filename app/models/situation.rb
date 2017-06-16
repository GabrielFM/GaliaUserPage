class Situation < ApplicationRecord
	after_initialize :init 

	def init
		self.temp ||= 0
		self.pump ||= false
		self.umidity ||= 0
		self.lum ||= 0
		self.water_level ||= 0
	end
end
