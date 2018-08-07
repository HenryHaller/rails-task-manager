Rails.application.routes.draw do
  get    "tasks",          to: "tasks#index", as: :index

  get    "tasks/new",      to: "tasks#new", as: :new
    #VIEW ONE#
  # NB: The `show` route needs to be *after* `new` route.
  get    "tasks/:id",      to: "tasks#show", as: :show
    #CREATE#
  post   "tasks",          to: "tasks#create"


   #UPDATE#
   #put new information in a form#
  get    "tasks/:id/edit", to: "tasks#edit", as: :edit

    #send form's information into the server so the server can update the model with the new information#
  patch  "tasks/:id",      to: "tasks#update", as: :update

    #DELETE#
  delete "tasks/:id",      to: "tasks#destroy", as: :delete
end

