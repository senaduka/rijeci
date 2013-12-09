class SolutionsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  #before_filter :allow_cors

  # GET /solutions
  # GET /solutions.json
  def index
    @solutions = Solution.all
  end

  # GET /solutions/1
  # GET /solutions/1.json
  def show
    @solution = Solution.find(params[:id])
  end


  # POST /solutions
  # POST /solutions.json
  def create
    @solution = Solution.new
    @solution.time = params[:time]
    @solution.number = params[:number].to_i
    @solution.username = params[:username]

    respond_to do |format|
      if @solution.save
        format.json { render action: 'show', status: :created, location: @solution }
      else
        format.json { render json: @solution.errors, status: :unprocessable_entity }
      end
    end
  end

end
