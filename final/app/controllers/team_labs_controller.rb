class TeamLabsController < ApplicationController
  def index
    @teamLabs = TeamLab.all
  end

  def show
    @teamLab = TeamLab.find(params[:id])
  end

  def new
    @teamLab = TeamLab.new
  end

  def create
    params[:student_ids].each do |student|
      TeamLab.create(team_id: params[:team_id], student_id: student)
    end
    redirect_to roster_index_path
  end

  def update
  end

  def edit
  end

  def destroy
    TeamLab.find(params[:id]).destroy
    redirect_to roster_index_path
  end
end
