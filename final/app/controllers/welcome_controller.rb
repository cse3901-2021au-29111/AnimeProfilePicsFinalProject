class WelcomeController <  ApplicationController
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
    @student = Student.new(fname: "...", lname: "...", buckID: "...")

    if @student.save
      redirect_to @student
    else
      render :new
    end
  end

  def stdView
  end
end