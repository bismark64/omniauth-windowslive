# OmniAuth Windows Live

This gem contains the unofficial WindowsLive strategy for OmniAuth.
It was originally forked from [joel's gem](https://github.com/joel/omniauth-windowslive).

## App registration
Like any other oauth strategy you have to register your page in the [Windows Live Developers Apps dashboard](https://account.live.com/developers/applications/index)

## Installation
```ruby
# Gemfile
gem 'omniauth-windowslive', git: 'http://github.com/bismark64/omniauth-windowslive'
```
And then

```bash
$ bundle install
```
## Usage
```ruby
# config/initializers/windowslive	
use OmniAuth::Builder do
  provider "windowslive", ENV['WINDOWSLIVE_CLIENT_ID'], ENV['WINDOWSLIVE_SECRET']
end
```
### Using with Devise
```ruby
# config/initializers/devise.rb
Devise.setup do |config|
  config.omniauth :windowslive, ENV['WINDOWSLIVE_CLIENT_ID'], ENV['WINDOWSLIVE_SECRET']
end
```

##Contributing
Your contribution is very welcome!

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Tests
Tested with the following Ruby versions:

- RUBY 2.1.2
