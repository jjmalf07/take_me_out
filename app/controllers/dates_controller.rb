class DatesController < ApplicationController
  def index
    @dates = Date.all
  end

  def show
    @date = Date.find(params[:id])
  end

  def new
    @date = Date.new
  end

  def create
    @date = Date.new
    @date.interest = params[:interest]
    @date.preference = params[:preference]
    @date.age_range = params[:age_range]
    @date.user_id = params[:user_id]
    @date.event_id = params[:event_id]
    @date.price = params[:price]
    @date.number_tickets = params[:number_tickets]
    @date.date_time = params[:date_time]
    @date.details = params[:details]

    if @date.save
      redirect_to "/dates", :notice => "Date created successfully."
    else
      render 'new'
    end
  end

  def edit
    @date = Date.find(params[:id])
  end

  def update
    @date = Date.find(params[:id])

    @date.interest = params[:interest]
    @date.preference = params[:preference]
    @date.age_range = params[:age_range]
    @date.user_id = params[:user_id]
    @date.event_id = params[:event_id]
    @date.price = params[:price]
    @date.number_tickets = params[:number_tickets]
    @date.date_time = params[:date_time]
    @date.details = params[:details]

    if @date.save
      redirect_to "/dates", :notice => "Date updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @date = Date.find(params[:id])

    @date.destroy

    redirect_to "/dates", :notice => "Date deleted."
  end
end
