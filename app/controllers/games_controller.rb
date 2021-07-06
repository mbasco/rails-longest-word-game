require 'open-uri'
require 'json'

class GamesController < ApplicationController
  def new
    # TODO: Display a new random grid and form
    # INFO: The form will be submitted (with POST) to the score action
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score

  end

  def word_validity?(word)
    response = URI.open("https://wagon-dictionary.herokuapp.com/#{word}")
    json = JSON.parse(response.read)
  end

end
