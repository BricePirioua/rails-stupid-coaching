class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ""
    if params[:question].downcase == "i am going to work"
      @answers = "Great!"
    elsif params[:question].end_with?("?")
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end
