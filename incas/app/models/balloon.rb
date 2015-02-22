class Balloon < ActiveRecord::Base
	belongs_to :bart, :foreign_key => 'bart_id'
end
