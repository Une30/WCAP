class Patient < ActiveRecord::Base
	has_many :tasks
	has_many :regs
	has_many :abusings
	def name
    "#{first_name} #{last_name}"
  	end
end
