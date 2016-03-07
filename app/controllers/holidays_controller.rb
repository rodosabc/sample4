class HolidaysController < ApplicationController

  def index
    @holidays = Holiday.all
    @poems = Poem.all
  end

  def new
    @holiday = Holiday.new
  end

  def create
    @holiday = Holiday.new(holiday_params)

    if @holiday.save
      redirect_to holidays_path
    else
      render 'new'
    end
  end

  def edit
    @holiday = Holiday.find(params[:id])
  end

  def update
    @holiday = Holiday.find(params[:id])

    if @holiday.update(holiday_params)
      redirect_to holidays_path
    else
      render 'edit'
    end
  end

  def destroy
    @holiday = Holiday.find(params[:id])

    @holiday.destroy

    redirect_to holidays_path
  end
  private

  def holiday_params
    params.require(:holiday).permit(:text,:date)
  end
end