class QuestionsController < ApplicationController
  # respond_to :json
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
    question = current_user.questions.find(params[:id])
    question.resolve!
    head :status=>:ok, :content_type => 'application/json', :location=>questions_path
  end
end
