post '/questions/:question_id/vote' do

	if QuestionVote.find_by(user_id: current_user.id) == nil
		@question_vote = QuestionVote.new(question_id: params[:question_id], user_id: current_user.id, vote_question: params[:vote])

		@question_vote.save
	
		
	else
		@message = "You already voted"
		
	end
		@user =  current_user
		@questions = Question.all
		@answers = Answer.all
		@question_vote = QuestionVote.all
		@upvote_count = QuestionVote.where(vote_question: "Upvote").count 
		@downvote_count = QuestionVote.where(vote_question: "Downvote").count
		erb :"static/home"
end

