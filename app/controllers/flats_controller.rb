require "open-uri"
class FlatsController < ApplicationController
  before_action :set_flats

  def index
  end

  def show
    @flat = @flats.select { |element| element['id'] == params[:id].to_i }.first
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.open(url).read)
  end
end
