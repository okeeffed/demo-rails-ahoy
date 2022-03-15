# README

## Steps

```s
# Install gem
$ bundler add ahoy_matey

# Generate install
$ bin/rails g ahoy:install
$ bin/rails db:migrate
```

Router:

```rb
Rails.application.routes.draw do
  resources :home, only: [:show]
end
```

Tracking in the backend:

```rb
class HomeController < ApplicationController
  def show
    ahoy.track "home#show", search_term: params[:id]
		render json: { message: "ok" }
  end
end
```

## To debug and test with HTTPie

Update the `` file:

```rb
class Ahoy::Store < Ahoy::DatabaseStore
end

# set to true for JavaScript tracking
Ahoy.api = false

Ahoy.quiet = false
Ahoy.track_bots = true

# set to true for geocoding (and add the geocoder gem to your Gemfile)
# we recommend configuring local geocoding as well
# see https://github.com/ankane/ahoy#geocoding
Ahoy.geocode = false
```
