class Rectangle < ActiveRecord::Base
	belongs_to :gonogo, :foreign_key => 'gonogo_id'
end
