class MatchesController < ApplicationController
  def index
    @matches = Match.all
  end

  def show
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new
    @match.date_id = params[:date_id]
    @match.user_id = params[:user_id]
    @match.accepted = params[:accepted]

    if @match.save
      redirect_to "/matches", :notice => "Match created successfully."
    else
      render 'new'
    end
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])

    @match.date_id = params[:date_id]
    @match.user_id = params[:user_id]
    @match.accepted = params[:accepted]

    if @match.save
      redirect_to "/matches", :notice => "Match updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @match = Match.find(params[:id])

    @match.destroy

    redirect_to "/matches", :notice => "Match deleted."
  end
end
