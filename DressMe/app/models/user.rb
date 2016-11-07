class User < ActiveRecord::Base
	validates :username,:first_name, :last_name,:email, presence: true

end
