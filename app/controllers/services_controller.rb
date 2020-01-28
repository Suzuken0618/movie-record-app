class ServicesController < ApplicationController
    def show
        @service = Service.find(params[:id])
        @records = Record.where(service_id: params[:id])
    end
end
