class Ddtanswer < ActiveRecord::Base
	belongs_to :task, :foreign_key => 'task_id'
end
