class Reg < ActiveRecord::Base
	belongs_to :user, :foreign_key => 'user_id'
	belongs_to :patient, :foreign_key => 'patient_id'
	belongs_to :clinic, :foreign_key => 'clinic_id'
end
