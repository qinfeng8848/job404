class ResumesController < ApplicationController

  def new
    @job = Job.find(params[:job_id])
    @resume = Resume.new
  end

  def create
    @job = Job.find(params[:job_id])
    @resume = Resume.new(resume_params)
    @resume.job = @job
    if @resume.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

  private

  def resume_params
    params.require(:resume).permit(:title,:description,:attachment)
  end

end
