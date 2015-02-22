class Examiner < ActiveRecord::Base
	belongs_to :clinic, {:foreign_key => "clinic_id"}
	belongs_to :user, {:foreign_key => "user_id"}
end
