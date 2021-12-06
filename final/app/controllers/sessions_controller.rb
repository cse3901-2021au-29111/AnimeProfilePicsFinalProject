class SessionsController < ApplicationController
  def new
  end

  def create
    student = Student.find_by(email: params[:session][:email].downcase)
    if student && student.authenticate(params[:session][:password])
      #redirect_to_student_index
      log_in student
      #redirect to students page
      redirect_to root_path
      else
      #need css for flash in sign up and login
      flash.now[:danger] = 'Invalid email/password combination'
      render :new
    end
  end


  def destroy
  end
end
