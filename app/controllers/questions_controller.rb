class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if params[:question].downcase.strip().last == "?"
      @answer = "Silly question, get dressed and go to work!".upcase
    elsif params[:question].downcase.strip() == "i am going to work"
      @answer = "Great!".upcase
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # if params[:question].downcase.strip().gsub(/([^\w|\s])/, '') == "what time is it"
    #   @answer = Time.now
    # end

    # raise
  end
end
