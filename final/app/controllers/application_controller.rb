class ApplicationController < ActionController::Base
    before_action :set_current_student
    before_action :logged_in?
    include SessionsHelper

end
