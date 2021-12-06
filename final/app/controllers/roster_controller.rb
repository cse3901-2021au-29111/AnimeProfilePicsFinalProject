class RosterController <  ApplicationController
  def index
    @rosters = Roster.all
  end

  def show
    @roster = Roster.find(params[:section_id])
  end

  def new
    @roster = Roster.new
  end

  def create
    Roster.create(team_id: params[:team_id], student_id: params[:student_id])
    redirect_to roster_index_path
  end
end