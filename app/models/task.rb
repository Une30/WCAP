class Task < ActiveRecord::Base
	after_save :create_stroop

	belongs_to :user, :foreign_key => 'user_id'
	belongs_to :patient, :foreign_key => 'patient_id'
	belongs_to :clinic, :foreign_key => 'clinic_id'
	has_one :bart, :dependent => :destroy 
	has_one :gonogo, :dependent => :destroy 
	has_one :ddtanswer, :dependent => :destroy 
	has_many :stroops, :dependent => :destroy 

	def create_stroop
		stroop_before = Stroop.new
		stroop_before.finished = false
		stroop_before.before_stimulation = true
		stroop_before.task = self
		self.stroops << stroop_before
		stroop_before.save
		stroop_after = Stroop.new
		stroop_after.finished = false
		stroop_after.before_stimulation = false
		stroop_after.task = self
		self.stroops << stroop_after
		stroop_after.save
	end
end
