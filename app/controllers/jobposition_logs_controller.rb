class JobpositionLogsController < ApplicationController
  layout 'user_resources'
  def new
    respond_with(@jobposition_log = JobpositionLog.new)
  end

  def show
    respond_with(@jobposition_log = JobpositionLog.find_by_user_id(current_user.id))
  end

  def edit
    respond_with(@jobposition_log = JobpositionLog.find_by_user_id(current_user.id))
  end

  def create
    @jobposition_log = JobpositionLog.new(jobposition_log_params)
    @jobposition_log.user_id = current_user.id
    @jobposition_log.registered_by_id = current_user.id
    respond_with(@jobposition_log.save, :status => :ok, :location => jobposition_log_path)
  end

  def update
    @jobposition_log = JobpositionLog.find_by_user_id(current_user.id)
    @jobposition_log.modified_by_id = current_user.id
    @jobposition_log.update(jobposition_log_params)
    respond_with(@jobposition_log, :status => :ok, :location => jobposition_log_path)
  end


  def jobposition_log_params
    params.require(:jobposition_log).permit(:worker_key, :worker_number, :academic_years, :administrative_years)
  end
end
