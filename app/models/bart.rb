class Bart < ActiveRecord::Base
	belongs_to :task, :foreign_key => 'task_id'
	has_many :balloons, :dependent => :destroy
end
