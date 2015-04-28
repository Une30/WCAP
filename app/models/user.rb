class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :profile , :dependent => :destroy  
  has_many :tasks
  has_many :regs
  has_one :supervisor
  has_many :examiners
  

  def self.has_patient(patient, clinic, current_user)
	current_user.regs.each do |r|
		if r.patient == patient and r.clinic == clinic
			return true
		end
	end
	return false
  end


  def self.has_clinic(clinic, current_user)
	current_user.examiners.each do |e|
		if e.clinic.id == clinic.id
			return true
		end
	end
	return false
  end

  def self.has_patient2(patient,current_user)
	current_user.regs.each do |r|
		if r.patient == patient
			return true
		end
	end
	return false
  end
end
