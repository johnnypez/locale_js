LocaleJs::Engine.routes.draw do
  get 'locale/:action', :controller => :locale
end