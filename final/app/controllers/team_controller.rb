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
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])

    if @team.update(team_update)
      redirect_to @team,notice: "Update success"
    else
      flash.now[:notice] = "try again"
      render :edit
    end
  end

  def destroy
    Team.find(params[:id]).destroy
    redirect_to team_index_path
  end

  private
  def team_update
    params.require(:team).permit(:tName)
  end

end