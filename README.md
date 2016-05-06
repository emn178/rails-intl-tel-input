# rails-intl-tel-input

[![Build Status](https://api.travis-ci.org/emn178/rails-intl-tel-input.png)](https://travis-ci.org/emn178/rails-intl-tel-input)
[![Coverage Status](https://coveralls.io/repos/emn178/rails-intl-tel-input/badge.svg?branch=master)](https://coveralls.io/r/emn178/rails-intl-tel-input?branch=master)

Integrate with [intl-tel-input](https://github.com/jackocnr/intl-tel-input) to provide international telephone numbers input and form helper. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails-intl-tel-input'
```

And then execute:

    bundle

Or install it yourself as:

    gem install rails-intl-tel-input

## Usage

### Require Javascript
Make sure you required **jQuery** and add the following to /app/assets/javascripts/application.js:
```JavaScript
//= require intlTelInput
```
### Require CSS
Add the following to /app/assets/stylesheets/application.css:
```CSS
/*
 *= require intlTelInput
 */
```

### Helpers
You can use `intl_tel_input_tag` and `intl_tel_input`.
```ERB
<%= intl_tel_input_tag(name, value, intl_tel_input_options, html_options) %>
<%= intl_tel_input_tag(:tel, 'red', {:allowDropdown => false}, {:class => 'tel'}) %>
<%= intl_tel_input_tag(:tel) %>

or form builder

<% form_for @item do |f| %>
<%= f.intl_tel_input(method, intl_tel_input_options, html_options) %>
<%= f.intl_tel_input(:tel, {:allowDropdown => false}, {:class => 'tel'}) %>
<%= f.intl_tel_input(:tel) %>
<% end %>
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Contact
The project's website is located at https://github.com/emn178/rails-intl-tel-input  
Author: Chen, Yi-Cyuan (emn178@gmail.com)
