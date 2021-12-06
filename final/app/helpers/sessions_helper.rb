module SessionsHelper
    # Logs in the given user/student (mentioned in textbook).
    def log_in(student)
        session[:email] = student.email
        end


    def set_current_student
        if session[:email]
            @current_student ||= Student.find_by(email: session[:email])
        end
    end


    def logged_in?
        !@current_student.nil?
    end
    
end
