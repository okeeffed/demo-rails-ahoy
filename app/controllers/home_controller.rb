class HomeController < ApplicationController
  def show
    ahoy.track 'home#show', id: params[:id]
    render json: { message: 'ok' }
  end
end
