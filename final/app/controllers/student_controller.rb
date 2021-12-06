class StudentController <  ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    
    @student = Student.new(student_params)
    if @student.save
      #login after sign up
      log_in @student
      flash[:success] = "You have successfully signed up!"
      redirect_to student_stdView_path
       # Handle a successful save.
    else
      render 'newStd'
    end
  
  end
       def student_params
          params.permit(:fname, :lname, :email, :password, :password_confirmation, :buckId)
        end

  def destroy
    Student.find(params[:id]).destroy
    redirect_to student_stdView_path
  end

  def update
  end
end