class CreateQuestionVotes < ActiveRecord::Migration
	def change
		create_table :question_votes do |t|
			t.integer :question_id
			t.string :vote_question
			t.integer :user_id
			t.timestamp
		end
		
	end
end
