class StudentController <  ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:buckID])
  end

  def new
    @student = Student.new
  end

  def create
    Student.create(fname: params[:fname], lname: params[:lname], buckId: params[:buckId])
    redirect_to student_stdView_path
    # @student = Student.new(fname: params[:name], lname: "", buckId: "")
    #
    # if @student.save
    #   puts("a")
    #   redirect_to welcome_stdView_path
    # else
    #   puts("b")
    #   render :new
    # end
  end

  def stdView
  end
end