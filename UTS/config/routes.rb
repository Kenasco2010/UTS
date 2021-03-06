Rails.application.routes.draw do
  resources :bills do
    resources :companies
    resources :payments
  end
  #This section of the code creates a new resources for the payment view and links it to the index
  get "payments" => "payments#index"
  #match ':controller(/:action(/:id))', :via => [:get, :post]
  
  # get 'bills/newpayment/:id' => 'payments#payment', as: :new_payment

  #This section of the code creates a new resources for the welcome view and links it to the login page
  get 'welcome/login'
  get "dashboard" => "welcome#dashboard"
  # => 'welcome#login', as: :login

#This section of the code makes it possible to load a new form based on the id of the bill 
#selected
get '/newpayment(/:id)' => 'bills#payment', as: :new_payment

  #This section of the codes makes it possbile to view a payment made per bill.
  get '/viewpayment(/:id)' => 'bills#showpaymentperbill', as: :bills_payment
  # get '/listpayments(/:id)' => 'payments#index', as: :bill_payments


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#landing'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
