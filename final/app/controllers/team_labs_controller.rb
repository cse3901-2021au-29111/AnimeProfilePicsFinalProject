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
    params[:lab_ids].each do |lab|
      TeamLab.create(team_id: params[:team_id], lab_id: lab)
    end
    redirect_to team_labs_index_path
  end

  def update
  end

  def edit
  end

  def destroy
    TeamLab.find(params[:id]).destroy
    redirect_to team_labs_index_path
  end
end
