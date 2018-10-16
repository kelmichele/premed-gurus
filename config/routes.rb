Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  get 'home-full', to: 'static_pages#home-full'
  get 'services', to: 'static_pages#services'
  get 'about', to: 'static_pages#about'
  get 'advisors', to: 'static_pages#advisors'
  get 'fee-schedule', to: 'static_pages#fee-schedule'
  get 'university-advising', to: 'static_pages#university-advising'
  get 'book-details', to: 'static_pages#book-details'
  get 'hire-gurus', to: 'static_pages#hire-gurus'

  get '/consultation', to: 'consultations#new', as: 'consultation'
  post '/consultation', to: 'consultations#create'

  get '/contract', to: 'contracts#new', as: 'contract'
  post '/contract', to: 'contracts#create'
end
