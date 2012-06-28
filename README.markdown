# Locale JS

  A fairly simple rails engine that takes your Rails locale and makes it available
  in your Javascript.
  All you have to do is add this to your Gemfile, mount the engine and include the javascript locale in
  your page.

## Examples

  add the gem to your Gemfile

  ```
  gem 'locale_js'
  ```

  mount the engine in our routes.rb

  ```
  mount LocaleJs::Engine => '/i18n'
  ```

  then add this to your application layout

  ```
  <script src="/i18n/locale/<%= I18n.locale %>.js"></script>
  ```

  Populate your locale file as normal..

  ```
  en:
    hello: "Hello World"
    foo: "%{foo} test"
    bar:
      baz: "The craic is %{craic}"
  ```

  You can then translate strings in your JS just like I18n...

  ```
  I18n.t('hello')
  => 'Hello World'

  I18n.t('foo', {foo: 'bar'})
  => 'bar test'

  I18n.t('bar.baz', {craic: 'mighty!'})
  => 'The craic is mighty!'
  ```

## Requirements
  
  Rails 3.0 or greater

## Copyright

Copyright (c) 2012 John Butler

See LICENSE.txt for details.
