class UserdatesController < ApplicationController
  def index
    @userdates = Userdate.all
  end

  def show
    @userdate = Userdate.find(params[:id])
  end

  def new
    @userdate = Userdate.new
  end

  def create
    @userdate = Userdate.new
    @userdate.interest = params[:interest]
    @userdate.preference = params[:preference]
    @userdate.age_range = params[:age_range]
    @userdate.user_id = current_user.id
    @userdate.event_id = params[:event_id]
    @userdate.price = params[:price]
    @userdate.number_tickets = params[:number_tickets]
    @userdate.date_time = params[:date_time]
    @userdate.details = params[:details]

    if @userdate.save
      redirect_to "/userdates", :notice => "Your date has been created successfully."
    else
      render 'new'
    end
  end

  def edit
    @userdate = Userdate.find(params[:id])
  end

  def update
    @userdate = Userdate.find(params[:id])

    @userdate.interest = params[:interest]
    @userdate.preference = params[:preference]
    @userdate.age_range = params[:age_range]
    @userdate.user_id = params[:user_id]
    @userdate.event_id = params[:event_id]
    @userdate.price = params[:price]
    @userdate.number_tickets = params[:number_tickets]
    @userdate.date_time = params[:date_time]
    @userdate.details = params[:details]

    if @userdate.save
      redirect_to "/userdates", :notice => "Date updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @userdate = Userdate.find(params[:id])

    @userdate.destroy

    redirect_to "/userdates", :notice => "Date deleted successfully."
  end
end
