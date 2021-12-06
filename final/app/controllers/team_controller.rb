class TeamController <  ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    Team.create(tName: params[:tName])
    redirect_to team_index_path
  end

  def edit
  end

  def update
  end

  def destroy
    Team.find(params[:id]).destroy
    redirect_to team_index_path
  end


end