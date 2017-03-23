class QuestionsController < ApplicationController
  before_action :set_question, except: [:index]
  def index
    @questions = Question.order("created_at DESC").all
  end
  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to @question, notice: 'question was successfully created.'
    else
      render :new
    end
  end
  def update
    if @question.update(question_params)
      redirect_to @question, notice: 'question was successfully updated.'
    else
      render :edit
    end
  end
  def destroy
    @horse.destroy
    redirect_to horses_url, notice: 'Horse was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_params
      params.require(:question).permit(:title)
    end
end
