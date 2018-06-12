Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :students do
    resources :students_cohorts, :only => [:new, :create, :show, :update]
end

resources :courses do
    resources :cohorts, :only => [:new, :create, :show, :update]
end 
    
resources :instructors


end
