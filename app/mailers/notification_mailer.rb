class NotificationMailer < ActionMailer::Base
  default from: "from@example.com"
  def notification_email(report)
    @report = report

    mail(to: @report.service.contact.pluck(:email), from: @report.user.email, cc: @report.user.email, subject: 'Reported System Outage: ' + @report.service.name)

  end
end
