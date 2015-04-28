class Abusing < ActiveRecord::Base
belongs_to :patient, :foreign_key => 'patient_id'
belongs_to :drug, :foreign_key => 'drug_id'
end
