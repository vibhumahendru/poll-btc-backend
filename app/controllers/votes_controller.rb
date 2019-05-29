class VotesController < ApplicationController

  def index
    @votes = Vote.all
    render json: @votes, status: :ok
  end

  def create
    @vote = Vote.create(category:params[:category])
    render json: @vote, status: :ok
  end


end
