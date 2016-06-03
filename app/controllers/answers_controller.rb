post '/questions/:id/answer' do

	@question = Question.find(params[:id])
	answer = @question.answers.create(body: params[:body])

	answer[:user_id] = current_user.id
	answer.save
	@answers =Answer.all
	@questions =Question.all

	redirect '/home'
end

