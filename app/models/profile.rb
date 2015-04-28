class Profile < ActiveRecord::Base
	belongs_to :user, {:foreign_key => "user_id"}

	def name
    "#{first_name} #{last_name}"
  	end
end
