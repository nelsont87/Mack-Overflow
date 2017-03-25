class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  def create
    @question = Question.find(params[:answer][:question_id])
    @answer = @question.answers.build(answer_params)

    if @answer.save
      flash[:notice] = 'Answer successfully added'
    else
      flash[:notice] = 'There was a problem with your answer.'
    end

    render "questions/show"
  end

  def update
    if @answer.update(answer_params)
      redirect_to @answer, notice: 'Answer was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @answer.destroy
    redirect_to answers_url, notice: 'Answer was successfully destroyed.'
  end

  private
    def set_answer
      @answer = Answer.find(params[:id])
    end

    def answer_params
      params.require(:answer).permit(:description, :question_id)
    end
end
