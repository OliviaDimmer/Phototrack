Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'shoot/list'
     get 'shoot/new'
     post 'shoot/create'
     patch 'shoot/update'
     get 'shoot/list'
     get 'shoot/show'
     get 'shoot/edit'
     get 'shoot/delete'
     get 'shoot/update'
end
