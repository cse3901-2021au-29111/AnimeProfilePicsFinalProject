class SessionController < ApplicationController
  
  def new
    @session = Session.new
  end

  def create
    student = Student.find_by(email: params[:session][:email].downcase)
    if student && student.authenticate(params[:session][:password])
      #redirect_to_student_index
      log_in(student)
      redirect_to evaluation_assignedEval_path
      
    else
      #need css for flash in sign up and login
      flash.now[:danger] = 'Invalid email/password combination'
      render :new
    end
  end


  def destroy
    session[:email] = nil
    redirect_to student_newStd_path, notice: "Logged out"
  end
end
