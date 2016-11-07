class User < ActiveRecord::Base
	validates :username,:first_name, :last_name, presence: true
	validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, presence: true , uniqueness: true
	has_secure_password

end
