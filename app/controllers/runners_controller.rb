class RunnersController < ApplicationController

  def new
    @runner = Runner.new
  end

  def create
    @runner = Runner.new(runner_params)
    if @runner.save
      redirect_to @runner
    else
      render 'new'
    end
    # render plain: params[:runner].inspect
  end

  def show
    # view runner's profile
    @runner = Runner.find(params[:id])
  end

  def edit
    @runner = Runner.find(params[:id])

    if @runner.update(runner_params)
      redirect_to @runner
    else
      render 'edit'
    end
  end

  def index
    @runners = Runner.all
  end

  private
    def runner_params
      params.require(:runner).permit(:first_name, :last_name, :age, :gender, :level, :interests)
    end
end
