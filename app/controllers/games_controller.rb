class GamesController < ApplicationController
  def new
    # Un array de 10 lettres random
    # @letters = []
    charset = Array('A'..'Z')
    @letters = Array.new(10) { charset.sample }
  end

  def score
    not_english = "Sorry but <%=params[:word] %> does not seem to be a valid English words..."
    wrong_letters = "Sorry but <%=params[:word] %> can't be built out of <% @letters %>"
    congrats = "Congratulations! params[:word] is a valid English word! "
    params[:word].chars.each do |element|
      if params[:letters].chars.exclude?(element)
        return wrong_letters
      elsif
        return not_english
      else
        return congrats
      end
  end
end



# Pour chaque lettre de word, on check si include dans letters
# split, chars pour transformer la string en array
# UNE LETTRE NE PEUX PAS ETRE UTILISER DEUX FOIS
# si une lettre renvoie faux,
# good_letters = "<%=params[:word] %> can be built out of <% @letters %>"
# wrong_letters = "Sorry but <%=params[:word] %> can't be built out of <% @letters %>"
# params[:word].chars.each do |element|
#   if @letters.chars.exclude?(element)
#     return wrong_letters
#   else
#     return good_letters
# end


# Sorry but <%=params[:word] %> can't be built out of <% @letters %>
# mot valide anglais, interpoler dans l'url
# https://wagon-dictionary.herokuapp.com/{word}
