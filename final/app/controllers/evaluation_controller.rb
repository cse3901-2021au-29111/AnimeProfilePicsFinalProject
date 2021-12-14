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

  def evaluation_param
    params.permit(:evaluator_id, :evaluated_id, :lab_id, :comment, :rating)
  end

  def labEval
    @evaluatee = params[:evaluated_id]
    @evaluator = params[:evaluator_id]
    @labID = params[:lab_id]
  end

  def create
    @evaluation = Evaluation.new(evaluation_param)
    if @evaluation.save
      flash[:success] = "New evaluation added!"
      redirect_to evaluation_index_path
       # Handle a successful save.
    else
      render 'assignedEval'
    end
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

