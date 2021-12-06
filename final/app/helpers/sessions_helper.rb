module SessionsHelper
    # Logs in the given user/student (mentioned in textbook).
    def log_in(student)
        session[:email] = student.email
        end
end
