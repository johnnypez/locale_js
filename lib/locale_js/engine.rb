require 'rails'

module LocaleJs
  class Engine < Rails::Engine
    isolate_namespace LocaleJs
  end
end