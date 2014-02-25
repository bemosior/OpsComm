class ReportController < ApplicationController

  before_filter :authenticate_user!

  def contact
    @report = Report.new
  end

  def submit

    @report = Report.new(report_params)
    @report.user = current_user
    if @report.save
      NotificationMailer.notification_email(@report).deliver
      redirect_to action: 'contact', alert: { "Communication Initiated" }
    else
      redirect_to action: 'contact', alert: { "A Failure Occurred" }
    end
  end

  private

  def report_params
    params.require(:report).permit(:service_id, :reproduce)
  end
end
