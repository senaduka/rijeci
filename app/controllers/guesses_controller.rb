class GuessesController < ApplicationController
  skip_before_filter :verify_authenticity_token
  #before_filter :allow_cors


  # GET /guesses
  # GET /guesses.json
  def index
    @guesses = Guess.all.order("created_at DESC")
  end


  # POST /guesses
  # POST /guesses.json
  def create
    @guess = Guess.new
    @guess.username = params[:username]
    @guess.definition = params[:definition]
    Rails.logger.debug(params.inspect)

    respond_to do |format|
      if @guess.save
        format.json { render action: 'show', status: :created, location: @guess }
      else
        format.json { render json: @guess.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @guess = Guess.find(params[:id])
  end
end

