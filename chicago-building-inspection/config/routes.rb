Rails.application.routes.draw do
  get '/inspections' => 'inspection#index'
end
