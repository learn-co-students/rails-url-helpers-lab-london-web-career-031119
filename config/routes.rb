Rails.application.routes.draw do

# get '/students', to: 'students#index'
# get '/students/:id', to: 'students#show'
# get '/students/new', to: 'students#new'
# post "/students", to: "students#create"
# get "/students/:id/edit", to: "students#edit"
# patch "/students/:id", to: "students#update"
# delete "/students/:id", to: "students#delete"

resources :students, only: [:index, :show]

get '/students/:id/activate', to: 'students#activate', as: 'activate_student'

end
