class ReportController < ApplicationController

  before_filter :authenticate_user!

  def contact
    @report = Report.new
    @report.service_id = params[:service_id] if defined? params[:service_id]
    @report.reproduce = params[:reproduce] if defined? params[:reproduce]
  end

  def submit

    @report = Report.new(report_params)


    @report.user = current_user

    if @report.save and NotificationMailer.notification_email(@report).deliver
      flash[:notice] = "Communication Initiated"
      redirect_to action: 'contact'
    else
      flash[:alert] = "Please fill out all fields."
      redirect_to action: 'contact', params: params[:report]
    end
  end

  private

  def report_params
    params.require(:report).permit(:service_id, :reproduce)
  end
end
