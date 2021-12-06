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

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])

    if @student.update(fname: params[:fname], lname: params[:lname], email: params[:email])
      redirect_to student_stdView_path
    else
      render :edit
    end
  end

end