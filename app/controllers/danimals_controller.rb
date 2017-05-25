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

  def edit
    # look up the danimal by id and save to an instance variable
    @danimal = Danimal.find(params[:id])
  end

  def update
    # find the danimal to update by id
    danimal = Danimal.find(params[:id])
    #update danimal
    danimal.update(
      name: params[:name],
      description: params[:description],
      species: params[:species],
      leg_count: params[:leg_count]
      )
    # redirect to single danimal show page for this danimal
    redirect_to danimal
    # ^ same as redirect_to danimal_path(danimal)
    # ^ same as redirect_to "/danimals/#{danimal.id}"
  end

  def destroy
    # find the danimal to delete by id
    danimal = Danimal.find(params[:id])
    # destroy the danimal
    danimal.destroy
    # redirect to danimals index
    redirect_to danimals_path
    # ^ same as redirect_to "/danimals"
  end

end
