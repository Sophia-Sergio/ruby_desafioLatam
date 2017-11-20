class PagesController < ApplicationController
  def index
  end

  def worker_add
    @projects_not_in = Distribution.where(:worker_id => params[:worker_id]).distinct!.pluck(:project_id)
    @projects = Project.where.not(:id => @projects_not_in)
    @worker = Worker.find(params[:worker_id])
  end
end
