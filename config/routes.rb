LocaleJs::Engine.routes.draw do
  match 'locale/:action', :controller => :locale
end