class Clinic < ActiveRecord::Base
	has_many :tasks
	has_many :regs
	has_one :supervisor
	has_many :examiners 


  def self.has_user(user, clinic)
	Clinic.find_by_id(clinic).examiners.each do |e|
		if e.user.id == user.id
			return true
		end
	end
	return false
  end


  def self.has_patient(patient, clinic)
	Clinic.find_by_id(clinic).regs.each do |r|
		if r.patient.id == patient.id
			return true
		end
	end
	return false
  end
end
