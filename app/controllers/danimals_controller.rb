class DanimalsController < ApplicationController

  def index
    @danimals = Danimal.all
  end

end
