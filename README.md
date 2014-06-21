# OmniAuth Windows Live

This gem contains the unofficial WindowsLive strategy for OmniAuth.
It originally forked from [joel's gem](https://github.com/joel/omniauth-windowslive).

## App registration
Like any other oauth strategy you have to register your page in the [Live Developers Apps dashboard](https://account.live.com/developers/applications/index)

## Installation
```ruby
# Gemfile
gem 'omniauth-windowslive', git: 'http://github.com/bismark64/omniauth-windowslive'
```
## Usage
```ruby
# config/initializers/windowslive	
use OmniAuth::Builder do
  provider "windowslive", ENV['WINDOWSLIVE_CLIENT_ID'], ENV['WINDOWSLIVE_SECRET']
end

### Using with Devise
```ruby
# config/initializers/devise.rb
Devise.setup do |config|
  config.omniauth :windowslive, ENV['WINDOWSLIVE_CLIENT_ID'], ENV['WINDOWSLIVE_SECRET']
end
```

## Tests
Tested with the following Ruby versions:

- RUBY 2.1.2