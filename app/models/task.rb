class Task < ActiveRecord::Base
	belongs_to :user, :foreign_key => 'user_id'
	belongs_to :patient, :foreign_key => 'patient_id'
	belongs_to :clinic, :foreign_key => 'clinic_id'
	has_one :bart, :dependent => :destroy 
	has_one :gonogo, :dependent => :destroy 
	has_one :ddtanswer, :dependent => :destroy 
	has_many :stroop, :dependent => :destroy 
end
