class JobsController < ApplicationController
  before_action :authenticate_user!,only: [:new,:create,:edit,:update,:destroy]

  def index
    # @jobs = Job.where(:is_hidden => false)
    @jobs = case params[:order]
            when 'by_lower_bound'
              Job.where(is_hidden: false).order('wage_lower_bound DESC')
            when 'by_upper_bound'
              Job.where(is_hidden: false).order('wage_upper_bound DESC')
            else
              Job.where(is_hidden: false).order('created_at DESC')
            end
  end

  def show
    @job = Job.find(params[:id])
    if @job.is_hidden
      flash[:warning] = "此工作还没有开放."
      redirect_to root_path
    end
  end

  # def new
  #   @job = Job.new
  # end

  # def create
  #   @job = Job.new(job_params)
  #   if @job.save
  #     redirect_to jobs_path
  #   else
  #     render :new
  #   end
  # end

  # def edit
  #   @job = Job.find(params[:id])
  # end

  # def update
  #   @job = Job.find(params[:id])
  #   if @job.update(job_params)
  #     redirect_to jobs_path, notice: "更新成功!"
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @job = Job.find(params[:id])
  #   @job.destroy
  #   flash[:alert] = "记录已经删除!"
  #   redirect_to jobs_path
  # end

  private
  def job_params
    params.require(:job).permit(:title, :description,:wage_upper_bound, :wage_lower_bound, :contact_email)
  end

end
