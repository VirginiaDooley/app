Rails.application.routes.draw do

  root 'welcome#index'
#defined route 'findmeetups' This named route goes to this controller#action
  get 'findmeetups', to: 'welcome#search', as: :search
end
