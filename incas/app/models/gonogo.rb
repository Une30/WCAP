class Gonogo < ActiveRecord::Base
	belongs_to :task, :foreign_key => 'task_id'
	has_many :rectangles, :dependent => :destroy
end
