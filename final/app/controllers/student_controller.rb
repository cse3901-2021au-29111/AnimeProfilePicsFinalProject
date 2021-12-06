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
    Student.create(fname: params[:fname], lname: params[:lname], email: params[:email])
    redirect_to student_stdView_path
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