class ApplicationController < ActionController::Base
    include SessionsHelper
    before_action :set_current_student



end
