class JobsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]

  def show
    @job = job.find(params[:id])
  end

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      redirect_to jobs_path
    else
      render:new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to jobs_path, notice: 'Update Success'
    else
      render :edit
    end
  end

  def destroy
    @group = Job.find(params[:id])
    @group.destroy
    redirect_to jobs_path, alert: 'Group deleted'
  end



    private

    def job_params
      params.require(:job).permit(:title, :description)
    end

end
