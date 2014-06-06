class MatchesController < ApplicationController
  def index
    @matches = Match.all
    @userdates = Userdate.all
  end

  def show
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new
  end

  def create
    @match = Match.new
    @match.userdate_id = params[:userdate_id]
    @match.user_id = current_user.id
    @match.accepted = params[:accepted]

    if @match.save
      redirect_to "/userdates", :notice => "Match created successfully."
    else
      render 'new'
    end
  end

  def edit
    @match = Match.find(params[:id])
  end

  def update
    @match = Match.find(params[:id])

    @match.userdate_id = params[:userdate_id]
    @match.user_id = current_user.id
    @match.accepted = params[:accepted]

    if @match.save
      redirect_to "/userdates", :notice => "Match updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @match = Match.find(params[:id])

    @match.destroy

    redirect_to :back, :notice => "Match deleted."
  end

  def mymatches
    @mymatches = current_user.matches
  end
end
