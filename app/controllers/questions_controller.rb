class QuestionsController < ApplicationController
  def ask; end

  def answer
    good_answer = 'I am going to work'
    stupid_question = 'Silly question, get dressed and go to work!'
    @answer = if params[:ask] == good_answer
                'Great!'
              elsif params[:ask].include? '?'
                stupid_question
              else
                "I don't care"
              end
    @question = params[:ask]
  end
end
# # If you dont remember about the coach (poor) logic, here it is:

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
