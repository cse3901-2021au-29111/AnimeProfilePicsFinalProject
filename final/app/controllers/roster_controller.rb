class RosterController <  ApplicationController
  def create
    Student.create(fname: params[:fname], lname: params[:lname], email: params[:email])
    redirect_to student_stdView_path
  end
end