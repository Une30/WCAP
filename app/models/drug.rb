class Drug < ActiveRecord::Base
	has_many :abusings
end
