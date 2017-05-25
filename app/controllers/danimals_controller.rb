class DanimalsController < ApplicationController

  def index
    @danimals = Danimal.all
  end

  def new
  end

  def create
    # create a new danimal
    new_danimal = Danimal.create(name: params[:name], 
      description: params[:description],
      species: params[:species],
      leg_count: params[:leg_count])
    redirect_to new_danimal
    # ^same as redirect_to danimal_path(new_danimal)
    # ^ same as redirect_to "/danimals/#{danimal.id}"
  end

   def show
    # find the danimal with by id and save to an instance variable
    @danimal = Danimal.find(params[:id])
  end

end
