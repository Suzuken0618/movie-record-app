class ApplicationController < ActionController::Base
    
    before_action :get_service
    
    def get_service
        @services= Service.all
    end
end
