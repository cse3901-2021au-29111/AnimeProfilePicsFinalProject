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
    @student = Student.new(fname: "...", lname: "...", buckId: "...")

    if @student.save
      puts("a")
      redirect_to "http://google.com"
    else
      puts("b")
      render :new
    end
  end

  def stdView
  end
end