class Student < ActiveRecord::Base
	
	validates :email, :confirmation => true, 
			  :uniqueness => true, :presence => true, 
			  :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, 
			  :message => "only letters allowed"}
			  
	validates :name, :length => { :minimum => 3}
	validates :surname, :length => { :minimum => 3}
	validates :password, :length => { :in => 6..10}
	validates :student_number, :length => { :is => 9}, :numericality => { :only_integer => true}
	validates :id_no, :length => { :is => 13}, :numericality => { :only_integer => true}
end
