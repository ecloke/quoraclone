class QuestionVote < ActiveRecord::Base
	belongs_to :user
	belongs_to :question
	# This is Sinatra! Remember to create a migration!


end


# params= {}
# name = body

# params = {body: "whatever u key in the box"}

# when u wanna call the value out from params (params is a hash), u call the hash name params[:body], the result of params[:body] = whatever u key in