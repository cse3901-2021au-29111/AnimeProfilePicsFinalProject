class TeamController <  ApplicationController
  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:adminId])
  end

  def new
    @team = Team.new
  end

  def create
  end
end