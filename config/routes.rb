Testapp::Application.routes.draw do
  localized(I18n.available_locales, :verbose => true) do
    scope "/:locale" do
      match '/home' => 'home#index', :as => :home_index
      resources :products
      root :to => 'products#index'
    end
  end 
end
