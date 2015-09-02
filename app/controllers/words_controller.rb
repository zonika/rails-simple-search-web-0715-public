class WordsController < ApplicationController
  before_action :set_word, only: [:show]
  def create
    w = Search.for(params[:keyword])
    if w.length == 1
      redirect_to "/words/#{w[0].id}"
    elsif w.length > 1

    end
  end
  def show
  end
end
