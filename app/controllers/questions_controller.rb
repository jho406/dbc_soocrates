class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
  
  def create
    @question = current_user.questions.new(params[:question])
    if @question.save
      redirect_to questions_path
    else
      render :index
    end
  end

  def resolve
    current_user.questions.find(params[:id]).resolve!
    redirect_to :back
  end
end
