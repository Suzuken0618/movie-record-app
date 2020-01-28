Rails.application.routes.draw do
  root to:"records#index"
  get "/new",to:"records#new"
  post "/create",to:"records#create"
  delete "/records/:id",to:"records#destroy"
  get "/records/:id/edit",to:"records#edit"
  patch "/records/:id",to:"records#update"
  get "/services/:id",to:"services#show"
end
