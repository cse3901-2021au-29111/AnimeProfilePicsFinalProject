
class EvaluationController < ApplicationController
  def index
    @evaluations = Evaluation.all
  end

  def show
    @evaluation = Evaluation.find(params[:id])
  end

  def new
    @evaluation = Evaluation.new
  end

  def create
    @evaluation = Evaluation.create(comment: params[:comment])
    redirect_to evaluation_index_path
  end

  def destroy
    Evaluation.find(params[:id]).destroy
    redirect_to student_stdView_path
  end

  def edit
    @evaluation = Evaluation.find(params[:id])
  end

  def update
    @evaluation = Evaluation.find(params[:id])

    if @evaluation.update(student_update)
      redirect_to @evaluation,notice: "Update success"
    else
      flash.now[:notice] = "try again"
      render :edit
    end
  end

end

