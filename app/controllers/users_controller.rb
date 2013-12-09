class UsersController < ApplicationController


  # GET /users
  # GET /users.json
  def index
    username = params[:username]
    @solutions = Solution.all.where(:username => username).order("created_at DESC")
    @guesses = Guess.all.where(:username => username).order("created_at DESC")
  end

end
