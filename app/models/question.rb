class Question < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	belongs_to :user
	has_many :answers
	has_many :question_votes
	validates_uniqueness_of :subject, :message => "This question already exist"
end
