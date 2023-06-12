class QuestionsController < ApplicationController
  def ask
  end

  def answer
    question = params[:ask_coach]

    @answer = if question == 'i am going to work'
                'Great !'
              elsif question.end_with?('?')
                'Silly questions, get dresses and go to work !'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
