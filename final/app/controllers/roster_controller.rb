class RosterController <  ApplicationController
  def index
    @rosters = Roster.all
  end

  def show
    @roster = Roster.find(params[:id])
  end

  def new
    @roster = Roster.new
  end

  def create
    params[:student_ids].each do |student|
      Roster.create(team_id: params[:team_id], student_id: student)
    end
    redirect_to roster_index_path
  end

  def update
  end

  def edit
  end

  def destroy
    Roster.find(params[:id]).destroy
    redirect_to roster_index_path
  end

end