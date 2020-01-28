class RecordsController < ApplicationController
    
    def index
        @records = Record.all
        
    end
    
    def new
        
    end
    
    def create
        Record.create(title:params["memos"]["title"],review:params["memos"]["review"],service_id:params["memos"]["service_id"])
        redirect_to "/"
    end
    
    def destroy
        record = Record.find_by(params["id"])
        record.destroy
        redirect_to "/"
    end
    
    def edit
        @record = Record.find(params["id"])
        
    end
    
    def update
        record = Record.find(params["id"])
        record.title = params["memos"]["title"]
        record.review = params["memos"]["review"]
        record.save
        redirect_to("/")
    end
    
end
