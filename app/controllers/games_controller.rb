class GamesController < ApplicationController
  def new
    # Un array de 10 lettres random
    # @letters = []
    charset = Array('A'..'Z')
    @letters = Array.new(10) { charset.sample }
  end

  def score
  end
end
