class PoemsController < ApplicationController
  def index
    @holidays = Holiday.all
    @holiday = Holiday.find(params[:holiday_id])
    @poems = @holiday.poems
  end

  def new
    @poems = Poem.new
    @holiday = Holiday.find(params[:holiday_id])
  end

  def create
    @holiday = Holiday.find(params[:holiday_id])
    @poem = @holiday.poems.create(poems_params)

    if @poem.save
      redirect_to holiday_poems_path
    else
      render 'new'
    end
  end

  def show
    @poem = Poem.find(params[:id])
  end

  def edit
    @poem = Poem.find(params[:id])
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
    @poem =

    @holiday.destroy

    redirect_to holidays_path
  end

  private

  def poems_params
    params.require(:poem).permit(:text)
  end
end