post '/question' do
	question = Question.create(subject: params[:subject])
	question[:user_id] = current_user.id
	question.save
	@questions =Question.all
	@answers =Answer.all
	redirect '/home'
end


