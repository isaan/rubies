Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home', to: 'home#beranda'
  get '/about', to: 'home#about'    
  get '/about/:id', to: 'home#about'  

  # get '/books', to: 'books#index'
  # get '/books/:id', to: 'books#show'
  # get '/books/new', to: 'books#new'
  # post '/books', to: 'books#create'

  # route manual utk url status buku
  #get '/books/active', to: 'books#active'

  #semua resources http method akan ditampilkan
  resources :books do
    get :active, on: :collection
    patch :toggle_nonaktif, on: :member 
    patch :toggle_aktif, on: :member
  end

  #resources yg akan ditampilkan hanya index dan show
  #resources :books, only: [:index, :show]

  #semua resources akan ditampilkan kecuali index dan show
  #resources :books, except: [:index, :show]

end